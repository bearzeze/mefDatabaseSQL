-- SQL statements for creating tables, indexes, views and triggers in database relating to the Faculty of Mechanical Engieering (MEF)
    CREATE DATABASE IF NOT EXISTS `mef`;

    USE `mef`;

-- 0) Dropping all tables, views, triggers
    DROP TABLE IF EXISTS `department_members`;
    DROP TABLE IF EXISTS `department_courses`;
    DROP TABLE IF EXISTS `course_professor`;
    DROP TABLE IF EXISTS `course_assistant`;
    DROP TABLE IF EXISTS `departments`;
    DROP TABLE IF EXISTS `teaching_staff`;
    DROP TABLE IF EXISTS `non_teaching_staff`;
    DROP TABLE IF EXISTS `courses`;

    DROP VIEW IF EXISTS `staff`;
    DROP VIEW IF EXISTS `department_staff`;
    DROP VIEW IF EXISTS `heads_of_departments`;
    DROP VIEW IF EXISTS `courses_info`;
    DROP VIEW IF EXISTS `courses_teachers`;

    DROP PROCEDURE IF EXISTS SetHeadDepartment;

-- 1) Tables
--  1.1) Departments table
    CREATE TABLE `departments` (
        `id` SMALLINT UNSIGNED AUTO_INCREMENT,
        `code` VARCHAR(10) NOT NULL UNIQUE,
        `name` VARCHAR(60) NOT NULL UNIQUE,
        PRIMARY KEY (`id`)
    );

--  1.2) Teaching staff table
    CREATE TABLE `teaching_staff` (
        `id` SMALLINT UNSIGNED AUTO_INCREMENT,
        `name` VARCHAR(20) NOT NULL,
        `surname` VARCHAR(60) NOT NULL,
        `title` VARCHAR(30) NOT NULL CHECK (`title` IN
                ("Teaching Assistant", "Senior Teaching Assistant", "Assistant Professor", "Associate Professor", "Professor")),
        `email` VARCHAR(50) NOT NULL UNIQUE,
        `phone` CHAR(11),
        `location` VARCHAR(20),
        `curriculum_vitae` VARCHAR(1000),
        PRIMARY KEY (`id`)
    );

--  1.3) Non Teaching staff table
    CREATE TABLE `non_teaching_staff` (
        `id` SMALLINT UNSIGNED AUTO_INCREMENT,
        `name` VARCHAR(20) NOT NULL,
        `surname` VARCHAR(60) NOT NULL,
        `email` VARCHAR(50) UNIQUE,
        `phone` CHAR(11),
        `location` VARCHAR(20),
        PRIMARY KEY (`id`)
    );

--  1.4) Members of department - members can be in more than one department. Status determine whether member is an ordinary member or head of department
    CREATE TABLE `department_members` (
        `id` SMALLINT UNSIGNED AUTO_INCREMENT,
        `staff_id` SMALLINT UNSIGNED NOT NULL,
        `department_id` SMALLINT UNSIGNED NOT NULL,
        `status` VARCHAR(20) NOT NULL DEFAULT "member" CHECK (`status` IN ("member", "head of department")),
        PRIMARY KEY (`id`),
        FOREIGN KEY (`staff_id`) REFERENCES `teaching_staff`(`id`) ON DELETE CASCADE,
        FOREIGN KEY (`department_id`) REFERENCES `departments`(`id`) ON DELETE CASCADE
    );

--  1.5) All of the courses taught in the faculty
    CREATE TABLE `courses` (
        `id` SMALLINT UNSIGNED AUTO_INCREMENT,
        `name` VARCHAR(80) NOT NULL UNIQUE,
        `code` VARCHAR(10) NOT NULL UNIQUE,
        `ECTS` TINYINT NOT NULL,
        PRIMARY KEY (`id`)
    );

--  1.6) Courses within departments
    CREATE TABLE `department_courses` (
        `id` SMALLINT UNSIGNED AUTO_INCREMENT,
        `course_id` SMALLINT UNSIGNED NOT NULL,
        `department_id` SMALLINT UNSIGNED NOT NULL,
        `cycle` VARCHAR(10) NOT NULL CHECK (`cycle` IN ("first", "second", "third")),
        `year` VARCHAR(5) NOT NULL CHECK (`year` IN ("I", "II", "III")),
        `semester` VARCHAR(10) NOT NULL CHECK (`semester` IN ("winter", "summer")),
        PRIMARY KEY (`id`),
        FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE CASCADE,
        FOREIGN KEY (`department_id`) REFERENCES `departments` (`id`) ON DELETE CASCADE
    );

-- 1.7) Course Instructor - for every course one professor only
    CREATE TABLE `course_professor` (
        `id` SMALLINT UNSIGNED AUTO_INCREMENT,
        `course_id` SMALLINT UNSIGNED NOT NULL UNIQUE,
        `professor_id` SMALLINT UNSIGNED NOT NULL,
        PRIMARY KEY (`id`),
        FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE CASCADE,
        FOREIGN KEY (`professor_id`) REFERENCES `teaching_staff` (`id`) ON DELETE CASCADE
    );

-- 1.7) Course assistant/s - for every course at least one assistant
    CREATE TABLE `course_assistant` (
        `id` SMALLINT UNSIGNED AUTO_INCREMENT,
        `course_id` SMALLINT UNSIGNED NOT NULL,
        `assistant_id` SMALLINT UNSIGNED NOT NULL,
        PRIMARY KEY (`id`),
        FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE CASCADE,
        FOREIGN KEY (`assistant_id`) REFERENCES `teaching_staff` (`id`) ON DELETE CASCADE
    );

-- 2) Indexes
    CREATE INDEX teaching_surname_index ON `teaching_staff` (`surname`);
    CREATE INDEX teaching_title_index ON `teaching_staff` (`title`);
    CREATE INDEX non_teaching_surname_index ON `non_teaching_staff` (`surname`);
    CREATE INDEX department_index ON `department_members` (`department_id`);
    CREATE INDEX staff_index ON `department_members` (`staff_id`);
    CREATE INDEX courses_name_index ON `courses` (`name`);
    CREATE INDEX cycle_index ON `department_courses` (`cycle`);
    CREATE INDEX course_id_dc_index ON `department_courses` (`course_id`);
    CREATE INDEX department_id_index ON `department_courses` (`department_id`);
    CREATE INDEX course_id_cp_index ON `course_professor` (`course_id`);
    CREATE INDEX professor_id_index ON `course_professor` (`professor_id`);
    CREATE INDEX course_id_ca_index ON `course_assistant` (`course_id`);
    CREATE INDEX assistant_id_index ON `course_assistant` (`assistant_id`);

-- 3) Triggers/Procedure
-- 3.1) Procedure that will change the head of department
    DELIMITER // -- delimiter needs to be changed
    CREATE PROCEDURE SetHeadDepartment (IN new_head_staff_id SMALLINT, IN department_code VARCHAR(15))
    BEGIN
        DECLARE current_head_of_department_id SMALLINT;
        DECLARE observed_department_id SMALLINT;
        DECLARE is_staff_in_department SMALLINT;

--      Getting id of the department knowing the code of the department
        SELECT `id` INTO observed_department_id
        FROM `departments`
        WHERE `code` = department_code;

--      Is the new head of staff in the department as the staff
        SELECT COUNT(*) INTO is_staff_in_department
        FROM `department_members`
        WHERE `department_id` = observed_department_id AND `staff_id` = new_head_staff_id;

--      Current head of department
        SELECT staff_id INTO current_head_of_department_id
        FROM `department_members`
        WHERE `department_id` = observed_department_id AND `status` = "head of department";

--      If there are no heads of department, new one will be the head of the department
        IF is_staff_in_department <= 0 THEN
                SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Staff is not coming from particular department!';

        ELSEIF current_head_of_department_id = new_head_staff_id THEN
                SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Current head of department is the same person!';

        ELSE
            IF current_head_of_department_id IS NULL THEN
            UPDATE `department_members`
            SET `status` = "head of department"
            WHERE `staff_id` = new_head_staff_id;

--          This is the only case of the allowable replacement
            ELSE
            UPDATE `department_members`
            SET `status` = "head of department"
            WHERE `staff_id` = new_head_staff_id;

            UPDATE `department_members`
            SET `status` = "member"
            WHERE `staff_id` = current_head_of_department_id;
            END IF;

        END IF;

    END; //
    DELIMITER ;

-- 4) Views
--   4.1) All of the Faculty staff combined into one view
    CREATE VIEW `staff` AS
    SELECT `name`, `surname`, `title`, `email`, `phone`, `location`, `curriculum_vitae` FROM `teaching_staff`
    UNION
    SELECT `name`, `surname`, "Staff" AS `title`, `email`, `phone`, `location`, NULL AS `curriculum_vitae` FROM `non_teaching_staff`
    ORDER BY `name`;

--  4.2) Combining Departments and their associated teaching staff
    CREATE VIEW `department_staff` AS
    SELECT t_s.`title`, CONCAT(t_s.`name`, " ", t_s.`surname`) AS name, d.`name` AS department, `status`
    FROM `department_members`
    JOIN `departments` AS d ON d.`id` = `department_id`
    JOIN `teaching_staff` AS t_s ON t_s.`id` = `staff_id`
    ORDER BY `department`, `status`, `surname`;

--  4.3) Presenting head of departments
    CREATE VIEW `heads_of_departments` AS
    SELECT * FROM `department_staff`
    WHERE `status` = "head of department";

--  4.4) Course info
    CREATE VIEW `courses_info` AS
    SELECT `department_courses`.`id`, `c`.`name` AS `course`, `c`.`code`, `d`.`name` AS `department`, `cycle`, `year`, `semester`, `ECTS`
    FROM `courses` AS `c`
    JOIN `department_courses` ON `c`.`id` = `course_id`
    JOIN `departments` AS `d` ON `d`.`id` = `department_id`
    ORDER BY `department`, `cycle`, `year`, `semester` DESC, `ECTS` DESC;

--  4.5) Course teacher
    CREATE VIEW `courses_teachers` AS
    SELECT `c`.`name` AS `course`, `c`.`code` AS `code`, CONCAT(`prof`.`name`, " ", `prof`.`surname`) AS `professor`, CONCAT(`asst`.`name`, " ", `asst`.`surname`) AS `assistant`
    FROM `course_professor` AS `c_p`
    JOIN `teaching_staff` AS `prof` ON `prof`.`id` = `c_p`.`professor_id`
    JOIN `courses` AS `c` ON `c`.`id` = `c_p`.`course_id`
    JOIN `course_assistant` AS `c_a` ON `c`.`id` = `c_a`.`course_id`
    JOIN `teaching_staff` AS `asst` ON `asst`.`id` = `c_a`.`assistant_id`
    ORDER BY `c`.`name`;

-- RUN schema.sql
-- source /workspaces/44953717/cs50 sql/Week6/final_project/project/schema.sql;

-- RUN queries.sql
source /workspaces/44953717/cs50 sql/Week6/final_project/project/queries.sql;


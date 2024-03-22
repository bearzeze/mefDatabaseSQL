--  0) Deleting data from tables
--   TRUNCATE TABLE `department_members`;
--   TRUNCATE TABLE `departments`;
--   TRUNCATE TABLE `teaching_staff`;
--   TRUNCATE TABLE `non_teaching_staff`;

-- 1) Filling tables with data
--  1.1) Inserting every department that MEF has into departments table
    INSERT INTO `departments` (`name`, `code`)
    VALUES
    ("Department of Mathematics and Physics", "DMP"),
    ("Department of Solid Mechanics", "DSM"),
    ("Department of Mechanical Design", "DMD"),
    ("Department of Machinery Production Engineering", "DMPE"),
    ("Department of Industrial Engineering and Management", "DIEM"),
    ("Department of Energy, Process and Environmental Engineering", "DEPEEE"),
    ("Department of Wood Technology", "DWT"),
    ("Department of Vehicle Engineering", "DVE"),
    ("Department of Defense Technology", "DDT");

    SELECT * FROM `departments`;

--  1.2) Inserting professors and teaching assistants into table
    INSERT INTO `teaching_staff` (`name`, `surname`, `email`, `phone`, `location`, `title`, `curriculum_vitae`)
    VALUES
    ("Zejd", "Imamovic", "imamovic@mef.unsa.ba", "033/729-908", "i106", "Senior Teaching Assistant", "CV on Linkedin: https://www.linkedin.com/in/zejd-imamovic-a31321135/"),
    ("Vahidin", "Hadziabdic", "hadziabdic@mef.unsa.ba", "033/729-839", "313", "Professor", NULL),
    ("Jasmin", "Bektesevic", "bektesevic@mef.unsa.ba", "033/729-835", "316", "Professor", NULL),
    ("Adnan", "Masic", "masic@mef.unsa.ba", "033/729-840", "009", "Professor", NULL),
    ("Emina", "Dzaferovic", "emina.dzaferovic@mef.unsa.ba", "033/729-800", "i204", "Senior Teaching Assistant", NULL),

    ("Mustafa", "Bevrnja", "mustafa.bevrnja@mef.unsa.ba", "033/729-907", "105 nova zgrada", "Senior Teaching Assistant", NULL),
    ("Faruk", "Bevrnja", "faruk.bevrnja@mef.unsa.ba", "033/729-910", "109 nova zgrada", "Senior Teaching Assistant", NULL),
    ("Elvedin", "Kljuno", "kljuno@mef.unsa.ba", "033/729-819", "108", "Professor", NULL),
    ("Marin", "Petrovic", "petrovic@mef.unsa.ba", "033/729-906", "107 nova zgrada", "Professor", NULL),
    ("Dzanko", "Hajradinovic", "hajradinovic@mef.unsa.ba", "033/729-913", "116", "Assistant Professor", NULL),
    ("Kanita", "Lemes", "kanita.lemes@mef.unsa.ba", "033/729-911", "113 nova zgrada", "Teaching Assistant", NULL),

    ("Nedim", "Pervan", "pervan@mef.unsa.ba", "033/729-841", "314", "Associate Professor", NULL),
    ("Muamer", "Delic", "delic@mef.unsa.ba", "033/729-833", "310", "Assistant Professor", NULL),
    ("Isad", "Saric", "saric@mef.unsa.ba", "033/729-838", "312", "Professor", NULL),
    ("Adil", "Muminovic", "muminovic@mef.unsa.ba", "033/729-845", "319", "Professor", NULL),
    ("Enis", "Muratovic", "muratovic@mef.unsa.ba", "033/729-833", "310", "Senior Teaching Assistant", NULL),

    ("Petar", "Tasic", "tasic@mef.unsa.ba", "033/729-869", "508", "Assistant Professor", NULL),
    ("Adi", "Pandzic", "pandzic@mef.unsa.ba", "033/729-879", "517", "Assistant Professor", NULL),
    ("Maida", "Cohodar-Husic", "cohodar@mef.unsa.ba", "033/729-871", "512", "Professor", NULL),
    ("Ahmet", "Cekic", "cekic@mef.unsa.ba", "033/729-861", "519", "Professor", NULL),

    ("Izet", "Bijelonja", "bijelonja@mef.unsa.ba", "033/729-878", NULL, "Professor", NULL),
    ("Mugdim", "Pasic", "mugdim.pasic@mef.unsa.ba", "033/729-900", NULL, "Professor", NULL),
    ("Hadis", "Bajric", "bajric@mef.unsa.ba", "033/729-865", "506", "Associate Professor", NULL),
    ("Mirza", "Pasic", "mirza.pasic@mef.unsa.ba", "033/729-889", "527", "Assistant Professor", NULL),
    ("Ajdin", "Vatres", "ajdin.vatres@mef.unsa.ba", "033/729-889", "527", "Senior Teaching Assistant", NULL),
    ("Faris", "Ferizbegovic", "faris.ferizbegovic@mef.unsa.ba", "033/729-894", "504", "Teaching Assistant", NULL),


    ("Amra", "Hasecic", "hasecic@mef.unsa.ba", "033/729-825", "213", "Associate Professor", NULL),
    ("Ejub", "Dzaferovic", "dzaferovic@mef.unsa.ba", "033/729-856", "414", "Professor", NULL),
    ("Muris", "Torlak", "torlak@mef.unsa.ba", "033/729-854", "412", "Professor", NULL),

    ("Sandra", "Martinovic", "s.martinovic@mef.unsa.ba", "033/729-821", "210", "Assistant Professor", NULL),
    ("Murco", "Obucina", "obucina@mef.unsa.ba", "033/729-827", "215", "Professor", NULL),
    ("Izet", "Horman", "horman@mef.unsa.ba", "033/729-826", NULL, "Professor", NULL),

    ("Dzevad", "Bibic", "bibic@mef.unsa.ba", "033/729-887", "525", "Professor", NULL),
    ("Jasmin", "Sehovic", "sehovic@mef.unsa.ba", "033/729-886", "524", "Assistant Professor", NULL),
    ("Mirsad", "Trobradovic", "trobradovic@mef.unsa.ba", "033/729-884", "523", "Assistant Professor", NULL),

    ("Jasmin", "Terzic", "terzic@mef.unsa.ba", "033/729-861", "503", "Associate Professor", NULL),
    ("Alan", "Catovic", "catovic@mef.unsa.ba", "033/729-859", "502", "Associate Professor", NULL),
    ("Nurin", "Zecevic", "zecevicn@mef.unsa.ba", "033/729-809", "010", "Assistant Professor", NULL);

--  1.3) Inserting other staff into table
    INSERT INTO `non_teaching_staff` (`name`, `surname`, `email`, `phone`, `location`)
    VALUES
    ("Amel", "Kasapovic", "amel.kasapovic@mef.unsa.ba", "033/729-806", "104"),
    ("Sanja", "Vulic", "dekanat@mef.unsa.ba", "033/729-802", "Dekanat"),
    ("Sabaheta", "Zilic", NULL, "033/729-800", "Portirnica");

    SELECT * FROM `staff`;

--  1.4) Connecting teaching staff with their departments into table
    INSERT INTO `department_members` (`staff_id`, `department_id`)
    VALUES
    ((SELECT `id` FROM `teaching_staff` WHERE `name` = "Zejd" AND `surname` = "Imamovic"), (SELECT `id` FROM `departments` WHERE `code` = "DMP")),
    ((SELECT `id` FROM `teaching_staff` WHERE `name` = "Vahidin" AND `surname` = "Hadziabdic"), (SELECT `id` FROM `departments` WHERE `code` = "DMP")),
    ((SELECT `id` FROM `teaching_staff` WHERE `name` = "Jasmin" AND `surname` = "Bektesevic"), (SELECT `id` FROM `departments` WHERE `code` = "DMP")),
    ((SELECT `id` FROM `teaching_staff` WHERE `name` = "Adnan" AND `surname` = "Masic"), (SELECT `id` FROM `departments` WHERE `code` = "DMP")),
    ((SELECT `id` FROM `teaching_staff` WHERE `name` = "Emina" AND `surname` = "Dzaferovic"), (SELECT `id` FROM `departments` WHERE `code` = "DMP")),

    ((SELECT `id` FROM `teaching_staff` WHERE `name` = "Elvedin" AND `surname` = "Kljuno"), (SELECT `id` FROM `departments` WHERE `code` = "DSM")),
    ((SELECT `id` FROM `teaching_staff` WHERE `name` = "Dzanko" AND `surname` = "Hajradinovic"), (SELECT `id` FROM `departments` WHERE `code` = "DSM")),
    ((SELECT `id` FROM `teaching_staff` WHERE `name` = "Marin" AND `surname` = "Petrovic"), (SELECT `id` FROM `departments` WHERE `code` = "DSM")),
    ((SELECT `id` FROM `teaching_staff` WHERE `name` = "Mustafa" AND `surname` = "Bevrnja"), (SELECT `id` FROM `departments` WHERE `code` = "DSM")),
    ((SELECT `id` FROM `teaching_staff` WHERE `name` = "Faruk" AND `surname` = "Bevrnja"), (SELECT `id` FROM `departments` WHERE `code` = "DSM")),
    ((SELECT `id` FROM `teaching_staff` WHERE `name` = "Kanita" AND `surname` = "Lemes"), (SELECT `id` FROM `departments` WHERE `code` = "DSM")),

    ((SELECT `id` FROM `teaching_staff` WHERE `name` = "Nedim" AND `surname` = "Pervan"), (SELECT `id` FROM `departments` WHERE `code` = "DMD")),
    ((SELECT `id` FROM `teaching_staff` WHERE `name` = "Isad" AND `surname` = "Saric"), (SELECT `id` FROM `departments` WHERE `code` = "DMD")),
    ((SELECT `id` FROM `teaching_staff` WHERE `name` = "Muamer" AND `surname` = "Delic"), (SELECT `id` FROM `departments` WHERE `code` = "DMD")),
    ((SELECT `id` FROM `teaching_staff` WHERE `name` = "Enis" AND `surname` = "Muratovic"), (SELECT `id` FROM `departments` WHERE `code` = "DMD")),
    ((SELECT `id` FROM `teaching_staff` WHERE `name` = "Adil" AND `surname` = "Muminovic"), (SELECT `id` FROM `departments` WHERE `code` = "DMD")),

    ((SELECT `id` FROM `teaching_staff` WHERE `name` = "Petar" AND `surname` = "Tasic"), (SELECT `id` FROM `departments` WHERE `code` = "DMPE")),
    ((SELECT `id` FROM `teaching_staff` WHERE `name` = "Adi" AND `surname` = "Pandzic"), (SELECT `id` FROM `departments` WHERE `code` = "DMPE")),
    ((SELECT `id` FROM `teaching_staff` WHERE `name` = "Maida" AND `surname` = "Cohodar-Husic"), (SELECT `id` FROM `departments` WHERE `code` = "DMPE")),
    ((SELECT `id` FROM `teaching_staff` WHERE `name` = "Kanita" AND `surname` = "Lemes"), (SELECT `id` FROM `departments` WHERE `code` = "DMPE")),
    ((SELECT `id` FROM `teaching_staff` WHERE `name` = "Ahmet" AND `surname` = "Cekic"), (SELECT `id` FROM `departments` WHERE `code` = "DMPE")),

    ((SELECT `id` FROM `teaching_staff` WHERE `name` = "Izet" AND `surname` = "Bijelonja"), (SELECT `id` FROM `departments` WHERE `code` = "DIEM")),
    ((SELECT `id` FROM `teaching_staff` WHERE `name` = "Hadis" AND `surname` = "Bajric"), (SELECT `id` FROM `departments` WHERE `code` = "DIEM")),
    ((SELECT `id` FROM `teaching_staff` WHERE `name` = "Mugdim" AND `surname` = "Pasic"), (SELECT `id` FROM `departments` WHERE `code` = "DIEM")),
    ((SELECT `id` FROM `teaching_staff` WHERE `name` = "Mirza" AND `surname` = "Pasic"), (SELECT `id` FROM `departments` WHERE `code` = "DIEM")),
    ((SELECT `id` FROM `teaching_staff` WHERE `name` = "Faris" AND `surname` = "Ferizbegovic"), (SELECT `id` FROM `departments` WHERE `code` = "DIEM")),
    ((SELECT `id` FROM `teaching_staff` WHERE `name` = "Ajdin" AND `surname` = "Vatres"), (SELECT `id` FROM `departments` WHERE `code` = "DIEM")),

    ((SELECT `id` FROM `teaching_staff` WHERE `name` = "Amra" AND `surname` = "Hasecic"), (SELECT `id` FROM `departments` WHERE `code` = "DEPEEE")),
    ((SELECT `id` FROM `teaching_staff` WHERE `name` = "Sandra" AND `surname` = "Martinovic"), (SELECT `id` FROM `departments` WHERE `code` = "DEPEEE")),
    ((SELECT `id` FROM `teaching_staff` WHERE `name` = "Ejub" AND `surname` = "Dzaferovic"), (SELECT `id` FROM `departments` WHERE `code` = "DEPEEE")),
    ((SELECT `id` FROM `teaching_staff` WHERE `name` = "Muris" AND `surname` = "Torlak"), (SELECT `id` FROM `departments` WHERE `code` = "DEPEEE")),
    ((SELECT `id` FROM `teaching_staff` WHERE `name` = "Nurin" AND `surname` = "Zecevic"), (SELECT `id` FROM `departments` WHERE `code` = "DEPEEE")),

    ((SELECT `id` FROM `teaching_staff` WHERE `name` = "Sandra" AND `surname` = "Martinovic"), (SELECT `id` FROM `departments` WHERE `code` = "DWT")),
    ((SELECT `id` FROM `teaching_staff` WHERE `name` = "Izet" AND `surname` = "Horman"), (SELECT `id` FROM `departments` WHERE `code` = "DWT")),
    ((SELECT `id` FROM `teaching_staff` WHERE `name` = "Murco" AND `surname` = "Obucina"), (SELECT `id` FROM `departments` WHERE `code` = "DWT")),

    ((SELECT `id` FROM `teaching_staff` WHERE `name` = "Dzevad" AND `surname` = "Bibic"), (SELECT `id` FROM `departments` WHERE `code` = "DVE")),
    ((SELECT `id` FROM `teaching_staff` WHERE `name` = "Jasmin" AND `surname` = "Sehovic"), (SELECT `id` FROM `departments` WHERE `code` = "DVE")),
    ((SELECT `id` FROM `teaching_staff` WHERE `name` = "Mirsad" AND `surname` = "Trobradovic"), (SELECT `id` FROM `departments` WHERE `code` = "DVE")),

    ((SELECT `id` FROM `teaching_staff` WHERE `name` = "Jasmin" AND `surname` = "Terzic"), (SELECT `id` FROM `departments` WHERE `code` = "DDT")),
    ((SELECT `id` FROM `teaching_staff` WHERE `name` = "Nurin" AND `surname` = "Zecevic"), (SELECT `id` FROM `departments` WHERE `code` = "DDT")),
    ((SELECT `id` FROM `teaching_staff` WHERE `name` = "Alan" AND `surname` = "Catovic"), (SELECT `id` FROM `departments` WHERE `code` = "DDT"));

    SELECT * FROM `department_staff` WHERE department = (SELECT `name` FROM `departments` WHERE `code` = "DMP" OR `code` = "DSM");

--  1.5) Setting the head of departments for the first time using SetHeadDepartment procedure
    SET @masic_id =  (SELECT `id` FROM `teaching_staff` WHERE `name` = "Adnan" AND `surname` = "Masic");
    SET @petrovic_id =  (SELECT `id` FROM `teaching_staff` WHERE `name` = "Marin" AND `surname` = "Petrovic");
    SET @adil_muminovic_id = (SELECT `id` FROM `teaching_staff` WHERE `name` = "Adil" AND `surname` = "Muminovic");
    SET @cekic_id =  (SELECT `id` FROM `teaching_staff` WHERE `name` = "Ahmet" AND `surname` = "Cekic");
    SET @mugdim_pasic_id = (SELECT `id` FROM `teaching_staff` WHERE `name` = "Mugdim" AND `surname` = "Pasic");
    SET @dzaferovic_id =  (SELECT `id` FROM `teaching_staff` WHERE `name` = "Ejub" AND `surname` = "Dzaferovic");
    SET @obucina_id =  (SELECT `id` FROM `teaching_staff` WHERE `name` = "Murco" AND `surname` = "Obucina");
    SET @bibic_id =  (SELECT `id` FROM `teaching_staff` WHERE `name` = "Dzevad" AND `surname` = "Bibic");
    SET @terzic_id =  (SELECT `id` FROM `teaching_staff` WHERE `name` = "Jasmin" AND `surname` = "Terzic");

    -- ERROR 1644(45000): Adnan Masic is not from DSM, but from DMP. It will produce an error while setting head of department
    CALL SetHeadDepartment (@masic_id, "DSM");
    CALL SetHeadDepartment (@masic_id, "DMP");
    CALL SetHeadDepartment (@petrovic_id, "DSM");
    CALL SetHeadDepartment (@adil_muminovic_id, "DMD");
    CALL SetHeadDepartment (@cekic_id, "DMPE");
    CALL SetHeadDepartment (@mugdim_pasic_id, "DIEM");
    CALL SetHeadDepartment (@dzaferovic_id, "DEPEEE");
    CALL SetHeadDepartment (@obucina_id, "DWT");
    CALL SetHeadDepartment (@bibic_id, "DVE");
    CALL SetHeadDepartment (@terzic_id, "DDT");

    SELECT * FROM `heads_of_departments`;

--  1.6) Changing the head of department by calling procedure - (Bajric replaces Mugdim Pasic, in DIEM department) OK
    SET @bajric_id = (SELECT `id` FROM `teaching_staff` WHERE `name` = "Hadis" AND `surname` = "Bajric");
    CALL SetHeadDepartment (@bajric_id, "DIEM");

-- ERROR 1644(45000): Hadis Bajric is not from DVE, but from DIEM. It will produce an error while changing head of department
--  1.7) Changing the head of department by calling procedure - (Bajric replaces Bibic, in DVE department) NOT SAME DEPARTMENT
    CALL SetHeadDepartment (@bajric_id, "DVE");

-- ERROR 1644(45000): Hadis Bajric is an already head of department. Redundant action
--  1.7) Changing the head of department by calling procedure - (Bajric replaces Bajric, in DSM department) REDUNDANT
    CALL SetHeadDepartment (@bajric_id, "DIEM");

--  1.8) Inserting some of the courses taught at MEF - IGNORE duplicates
    INSERT IGNORE INTO `courses` (`id`, `name`, `code`, `ECTS`)
    VALUES
--  All departments I cycle I year
    (1, "Mathematics I" ,"PMF-02", 10),
    (2, "Statics" ,"MT-01", 5),
    (3, "Physics I" ,"PMF-05", 5),
    (4, "Materials I" ,"MPI-01", 5),
    (5, "Processing Technologies" ,"MPI-03", 5),
    (6, "Chemistry" ,"A1101", 5),

    (7, "Mathematics II" ,"PMF-03", 7),
    (8, "Strength of Material" ,"MT-15", 6),
    (9, "Physics II" ,"PMF-06", 4),
    (10, "Technical Documentation and CAD", "OM-01", 6),
    (11, "Electrical Engineering" , "ETF-01", 3),
    (12, "Materials II", "MPI-02", 4),
    (13, "The Science of Wood", "TOD-01", 4),

--  All departments I cycle II year
    (14, "Mathematics III" , "PMF-04", 7),
    (15, "Kinematics" , "MT-02", 5),
    (16, "Basics of Engineering Thermodynamics" , "E-05", 5),
    (17, "Mechanical Elements I" , "OM-02", 5),
    (18, "Programming I" , "RIM-02", 4),
    (19, "Basics of Measurement and Data Processing" , "MPI-04", 4),

    (20, "Economics and Organization of Enterprises" , "IIM-30", 4),
    (21, "Dynamics" , "MT-03", 6),
    (22, "Fundamentals of Fluid Mechanics" , "EPO-21", 6),
    (23, "Mechanical Elements II" , "OM-03", 6),
    (24, "Numerical Methods in Engineering" , "IIM-47", 4),
    (25, "Heat Conduction and Diffusion" , "E-07", 4),

--  DMPE department - I cycle III year
    (26, "Basics of Cutting Processing" , "MPI-72", 5),
    (27, "Pneumatics and Hydraulics" , "MPI-07", 5),
    (28, "Basics of Deformation Processing" , "MPI-69", 5),
    (29, "Thermal Treatment" , "MPI-16 ", 5),
    (30, "Production Measurement Technique" , "MPI-12", 5),
    (31, "Casting" , "MPI-59", 5),
    (32, "Design Methodology" , "OM-04", 5),
    (33, "Management" , "IIM-15", 5),

    (34, "Automated and Robotic Technological Processes", "MPI-14", 5),
    (35, "Additive Technologies", "MPI-68", 5),
    (36, "Designing With Computers", "OM-14", 5),
    (37, "Basics of Welding", "MPI-73", 5),
    (38, "Engine Construction", "MV-05", 5),
    (39, "Process and Quality Control", "IIM-03", 5),
    (40, "Tool Construction", "OM-09", 5),
    (41, "Machines for Cutting Processing", "MPI-15", 5),

--  DIEM department - I cycle III year
    (42, "Engineering Optimization Techniques", "IIM-01", 5),
    (43, "Data Science, Machine Learning and Artificial Intelligence", "IIM-55", 5),
    (44, "Quality System Development", "IIM-37", 5),
    (45, "Operational Analysis", "IIM-39", 5),
    (46, "Management", "IIM-15", 5),
    (47, "Pneumatics and Hydraulics", "MPI-07", 5),
    (48, "Thermal Treatment", "MPI-16", 5),
    (49, "Basics of Deformation Processing", "MPI-69", 5),
    (50, "Basics of Cutting Processing", "MPI-72", 5),
    (51, "Industrial Maintenance", "IIM-02", 5),

    (52, "Operational Management", "IIM-04", 5),
    (53, "Process and Quality Control", "IIM-03", 5),
    (54, "Lean Management", "IIM-57", 5),
    (55, "Design and Analysis of Industrial Experiments", "IIM-51", 5),
    (56, "Designing With Computers", "OM-14", 5),
    (57, "Plastic Deformation Techno logies", "MPI-70", 5),
    (58, "Workspace Design", "IIM-20", 5),
    (59, "Automated and Robotic Technological Processes", "MPI-14", 5),

--  DWT department - I cycle III year
    (60, "Wood Gluing", "TOD-02", 5),
    (61, "Hydrothermal Wood Treatment", "TOD-03", 5),
    (62, "Woodworking Machines", "TOD-04", 5),
    (63, "Sawmill Wood Processing", "TOD-05", 5),
    (64, "Veneers and Veneer Boards", "TOD-06", 5),
    (65, "Designing Technological Processes in the Wood Industry", "TOD-07", 5),
    (66, "Wood Protection", "TOD-08", 5),
    (67, "Machines and Devices for Internal Transport", "TOD-09", 5),

    (68, "Surface Wood Treatment", "TOD-10", 5),
    (69, "Elements of Construction", "TOD-11", 5),
    (70, "Furniture Production Technology", "TOD-12", 5),
    (71, "Final Wood Processing", "TOD-13", 5),
    (72, "Production Preparation", "TOD-14", 5),
    (73, "Crushed Wood Boards", "TOD-15", 5),

--  DMD department - I cycle III year
    (74, "Design and Calculation of Welded Structures", "OM-35", 5),
    (75, "Machine Structures I", "OM-32", 5),
    (76, "Methodology of Construction", "OM-04", 5),
    (77, "Power and Motion Transmitters", "OM-05", 5),
    (78, "Technological Design", "OM-06", 5),
    (79, "Basics of Cutting Processing", "MPI-72", 5),
    (80, "Introduction to Vehicle Construction", "MV-32", 5),
    (81, "Thermal Treatment", "MPI-16", 5),
    (82, "Pneumatics and Hydraulics", "MPI-07", 5),
    (83, "Production Measurement Technique", "MPI-12", 5),

    (84, "Designing With Computers", "OM-14", 5),
    (85, "Transportation Means", "OM-08", 5),
    (86, "Tool Construction", "OM-09", 5),
    (87, "Industrial Practice MK1", "OM-41", 5),
    (88, "Machines for Cutting Processing", "MPI-15", 5),
    (89, "Basics of Welding", "MPI-73", 5),
    (90, "Engine Construction", "MV-05", 5),

--  DDT department - I cycle III year
    (91, "Ammunition", "OT-14", 6),
    (92, "Introduction to Explosives", "OT-39", 4),
    (93, "Engineering Optimization Techniques", "IIM-01", 5),
    (94, "Basics of Weapons", "OT-17", 5),
    (95, "Pneumatics and Hydraulics", "MPI-07", 5),
    (96, "Environmental Protection", "EPO-40", 5),
    (97, "Production Measurement Technique", "MPI-12", 5),

    (98, "Basics of Ballistics", "OT-47", 8),
    (99, "Ammunition Maintenance Technologies", "OT-30", 6),
    (100, "Computer-Aided Design", "OM-14", 5),
    (101, "Ammunition Production Technologies", "OT-33", 6),
    (102, "Ammunition Packaging for Storage and Distribution", "OT-49", 6),

--  DVE department - I cycle III year
    (103, "Engines", "MV-01", 5),
    (104, "Dynamics of Engines", "MV-02", 5),
    (105, "Fuel Supply Systems for Engines", "MV-03", 5),
    (106, "Basics of Vehicle Dynamics", "MV-06", 5),
    (107, "Motor Vehicles", "MV-07", 5),
    (108, "Propellants", "MV-10", 5),

    (109, "Alternative Fuels", "MV-12", 5),
    (110, "Engine Construction", "MV-05", 5),
    (111, "Engine Equipment", "MV-04", 5),
    (112, "Testing and Exploitation of Vehicles", "MV-09", 5),
    (113, "Testing and Exploitation of Engines", "MV-08", 5),
    (114, "Hybrid and Electric Vehicles", "MV-35", 5),
    (115, "Vehicle and Environment", "MV-13", 5);

    SELECT * FROM `courses`;

--  1.8) Connecting departments and courses - first cycle inserted
    INSERT INTO `department_courses` (`course_id`, `department_id`, `cycle`, `year`, `semester`)

--  First cycle I year - first 25 subjects are taught in all departments (except DWT department, some changes)
--      winter semester
    (SELECT `c`.`id`, `d`.`id`, "first", "I", "winter"
    FROM `courses` AS `c` ,`departments` AS `d`
    WHERE `c`.`id` <= 5 AND `d`.`code` != "DWT")
    UNION
    (SELECT `c`.`id`, `d`.`id`, "first", "I", "winter"
    FROM `courses` AS `c` ,`departments` AS `d`
    WHERE `c`.`id` <= 6 AND `c`.`id` != 5 AND  `d`.`code` = "DWT")
--      summer semester
    UNION
    (SELECT `c`.`id`, `d`.`id`, "first", "I", "summer"
    FROM `courses` AS `c` ,`departments` AS `d`
    WHERE `c`.`id` >= 7 AND `c`.`id` <= 12 AND `d`.`code` != "DWT")
    UNION
    (SELECT `c`.`id`, `d`.`id`, "first", "I", "summer"
    FROM `courses` AS `c` ,`departments` AS `d`
    WHERE `c`.`id` >= 7 AND `c`.`id` <= 13 AND `c`.`id` != 12 AND  `d`.`code` = "DWT")

    UNION
--  First cycle II year
--      winter semester
    (SELECT `c`.`id`, `d`.`id`, "first", "II", "winter"
    FROM `courses` AS `c` ,`departments` AS `d`
    WHERE `c`.`id` >= 14 AND `c`.`id` <= 19)
--      summer semester
    UNION
    (SELECT `c`.`id`, `d`.`id`, "first", "II", "summer"
    FROM `courses` AS `c` ,`departments` AS `d`
    WHERE `c`.`id` >= 20 AND `c`.`id` <= 25)

    UNION
--  First cycle III year
--  Department of Machinery Production Engineering - DMPE
--      winter semester
    (SELECT `c`.`id`, `d`.`id`, "first", "III", "winter"
    FROM `courses` AS `c` ,`departments` AS `d`
    WHERE `d`.`code` = "DMPE" AND `c`.`code` IN ("MPI-72", "MPI-07", "MPI-69", "MPI-16", "MPI-12", "MPI-59", "OM-04", "IIM-15"))

--      summer semester
    UNION
    (SELECT `c`.`id`, `d`.`id`, "first", "II", "summer"
    FROM `courses` AS `c` ,`departments` AS `d`
    WHERE `d`.`code` = "DMPE" AND `c`.`code` IN ("MPI-14", "MPI-68", "OM-14", "MPI-73", "MV-05", "IIM-03", "OM-09", "MPI-15"))

    UNION
    --  Department of Industrial Engineering and Management - DIEM
--      winter semester
    (SELECT `c`.`id`, `d`.`id`, "first", "III", "winter"
    FROM `courses` AS `c` ,`departments` AS `d`
    WHERE `d`.`code` = "DIEM" AND `c`.`code` IN ("IIM-01", "IIM-55", "IIM-37", "IIM-39", "IIM-15", "MPI-07", "MPI-16", "MPI-69", "MPI-72", "IIM-02"))
--      summer semester
    UNION
    (SELECT `c`.`id`, `d`.`id`, "first", "III", "summer"
    FROM `courses` AS `c` ,`departments` AS `d`
    WHERE `d`.`code` = "DIEM" AND `c`.`code` IN ("IIM-04", "IIM-03", "IIM-57", "IIM-51", "OM-14", "MPI-70", "IIM-20", "MPI-14"))

    UNION
--  Department of Wood Technology - DWT
--      winter semester
    (SELECT `c`.`id`, `d`.`id`, "first", "III", "winter"
    FROM `courses` AS `c` ,`departments` AS `d`
    WHERE `d`.`code` = "DWT" AND `c`.`code` IN ("TOD-02", "TOD-03", "TOD-04", "TOD-05", "TOD-06", "TOD-07", "TOD-08", "TOD-09"))
--      summer semester
    UNION
    (SELECT `c`.`id`, `d`.`id`, "first", "III", "summer"
    FROM `courses` AS `c` ,`departments` AS `d`
    WHERE `d`.`code` = "DWT" AND `c`.`code` IN ("TOD-10", "TOD-11", "TOD-12", "TOD-13", "TOD-14", "TOD-15"))

    UNION
--  Department of Mechanical Design - DMD
--      winter semester
    (SELECT `c`.`id`, `d`.`id`, "first", "III", "winter"
    FROM `courses` AS `c` ,`departments` AS `d`
    WHERE `d`.`code` = "DMD" AND `c`.`code` IN ("OM-35", "OM-32", "OM-04", "OM-05", "OM-06", "MPI-72", "MV-32", "MPI-16", "MPI-07", "MPI-12"))
--      summer semester
    UNION
    (SELECT `c`.`id`, `d`.`id`, "first", "III", "summer"
    FROM `courses` AS `c` ,`departments` AS `d`
    WHERE `d`.`code` = "DMD" AND `c`.`code` IN ("OM-14", "OM-08", "OM-09", "OM-41", "MPI-15", "MPI-73", "MV-05"))

    UNION
--  Department of Defense Technology  - DDT
--      winter semester
    (SELECT `c`.`id`, `d`.`id`, "first", "III", "winter"
    FROM `courses` AS `c` ,`departments` AS `d`
    WHERE `d`.`code` = "DDT" AND `c`.`code` IN ("OT-14", "OT-39", "IIM-01", "OT-17", "MPI-07", "EPO-40", "MPI-12"))
--      summer semester
    UNION
    (SELECT `c`.`id`, `d`.`id`, "first", "III", "summer"
    FROM `courses` AS `c` ,`departments` AS `d`
    WHERE `d`.`code` = "DDT" AND `c`.`code` IN ("OT-47", "OT-30", "OM-14", "OT-33", "OT-49"))

    UNION
--  Department of Vehicle Engineering  - DVE
--      winter semester
    (SELECT `c`.`id`, `d`.`id`, "first", "III", "winter"
    FROM `courses` AS `c` ,`departments` AS `d`
    WHERE `d`.`code` = "DVE" AND `c`.`code` IN ("MV-01", "MV-02", "MV-03", "MV-06", "MV-07", "MV-10"))
--      summer semester
    UNION
    (SELECT `c`.`id`, `d`.`id`, "first", "III", "summer"
    FROM `courses` AS `c` ,`departments` AS `d`
    WHERE `d`.`code` = "DVE" AND `c`.`code` IN ("MV-12", "MV-05", "MV-04", "MV-09", "MV-08", "MV-35", "MV-13"));

    SELECT * FROM `courses_info` WHERE `department` = (SELECT `name` FROM `departments` WHERE `code` = "DDT");

--  1.9) Connecting some subjects and professor/assistant
    INSERT INTO `course_professor` (`course_id`, `professor_id`)
    VALUES
    ((SELECT `id` FROM `courses` WHERE `code` = "MT-01"), (SELECT `id` FROM `teaching_staff` WHERE `name` = "Marin" AND `surname` = "Petrovic")),
    ((SELECT `id` FROM `courses` WHERE `code` = "PMF-05"), (SELECT `id` FROM `teaching_staff` WHERE `name` = "Adnan" AND `surname` = "Masic")),
    ((SELECT `id` FROM `courses` WHERE `code` = "PMF-03"), (SELECT `id` FROM `teaching_staff` WHERE `name` = "Jasmin" AND `surname` = "Bektesevic")),
    ((SELECT `id` FROM `courses` WHERE `code` = "MT-02"), (SELECT `id` FROM `teaching_staff` WHERE `name` = "Elvedin" AND `surname` = "Kljuno")),
    ((SELECT `id` FROM `courses` WHERE `code` = "OM-03"), (SELECT `id` FROM `teaching_staff` WHERE `name` = "Adil" AND `surname` = "Muminovic")),
    ((SELECT `id` FROM `courses` WHERE `code` = "MT-15"), (SELECT `id` FROM `teaching_staff` WHERE `name` = "Elvedin" AND `surname` = "Kljuno")),
    ((SELECT `id` FROM `courses` WHERE `code` = "OM-01"), (SELECT `id` FROM `teaching_staff` WHERE `name` = "Isad" AND `surname` = "Saric")),
    ((SELECT `id` FROM `courses` WHERE `code` = "IIM-47"), (SELECT `id` FROM `teaching_staff` WHERE `name` = "Izet" AND `surname` = "Bijelonja")),
    ((SELECT `id` FROM `courses` WHERE `code` = "PMF-06"), (SELECT `id` FROM `teaching_staff` WHERE `name` = "Adnan" AND `surname` = "Masic")),
    ((SELECT `id` FROM `courses` WHERE `code` = "IIM-30"), (SELECT `id` FROM `teaching_staff` WHERE `name` = "Mugdim" AND `surname` = "Pasic")),
    ((SELECT `id` FROM `courses` WHERE `code` = "MT-03"), (SELECT `id` FROM `teaching_staff` WHERE `name` = "Dzanko" AND `surname` = "Hajradinovic")),
    ((SELECT `id` FROM `courses` WHERE `code` = "RIM-02"), (SELECT `id` FROM `teaching_staff` WHERE `name` = "Zejd" AND `surname` = "Imamovic"));



    INSERT INTO `course_assistant` (`course_id`, `assistant_id`)
    VALUES
    ((SELECT `id` FROM `courses` WHERE `code` = "MT-01"), (SELECT `id` FROM `teaching_staff` WHERE `name` = "Faruk" AND `surname` = "Bevrnja")),
    ((SELECT `id` FROM `courses` WHERE `code` = "MT-15"), (SELECT `id` FROM `teaching_staff` WHERE `name` = "Mustafa" AND`surname` = "Bevrnja")),
    ((SELECT `id` FROM `courses` WHERE `code` = "PMF-05"), (SELECT `id` FROM `teaching_staff` WHERE `name` = "Emina" AND `surname` = "Dzaferovic")),
    ((SELECT `id` FROM `courses` WHERE `code` = "PMF-03"), (SELECT `id` FROM `teaching_staff` WHERE `name` = "Jasmin" AND`surname` = "Bektesevic")),
    ((SELECT `id` FROM `courses` WHERE `code` = "MT-02"), (SELECT `id` FROM `teaching_staff` WHERE `name` = "Faruk" AND `surname` = "Bevrnja")),
    ((SELECT `id` FROM `courses` WHERE `code` = "OM-03"), (SELECT `id` FROM `teaching_staff` WHERE `name` = "Enis" AND`surname` = "Muratovic")),
    ((SELECT `id` FROM `courses` WHERE `code` = "OM-03"), (SELECT `id` FROM `teaching_staff` WHERE `name` = "Muamer" AND`surname` = "Delic")),
    ((SELECT `id` FROM `courses` WHERE `code` = "OM-01"), (SELECT `id` FROM `teaching_staff` WHERE `name` = "Enis" AND`surname` = "Muratovic")),
    ((SELECT `id` FROM `courses` WHERE `code` = "OM-01"), (SELECT `id` FROM `teaching_staff` WHERE `name` = "Muamer" AND`surname` = "Delic")),
    ((SELECT `id` FROM `courses` WHERE `code` = "PMF-06"), (SELECT `id` FROM `teaching_staff` WHERE `name` = "Emina" AND `surname` = "Dzaferovic")),
    ((SELECT `id` FROM `courses` WHERE `code` = "IIM-47"), (SELECT `id` FROM `teaching_staff` WHERE `name` = "Mirza" AND `surname` = "Pasic")),
    ((SELECT `id` FROM `courses` WHERE `code` = "IIM-47"), (SELECT `id` FROM `teaching_staff` WHERE `name` = "Ajdin" AND `surname` = "Vatres")),
    ((SELECT `id` FROM `courses` WHERE `code` = "IIM-47"), (SELECT `id` FROM `teaching_staff` WHERE `name` = "Faris" AND `surname` = "Ferizbegovic")),
    ((SELECT `id` FROM `courses` WHERE `code` = "IIM-30"), (SELECT `id` FROM `teaching_staff` WHERE `name` = "Mirza" AND `surname` = "Pasic")),
    ((SELECT `id` FROM `courses` WHERE `code` = "IIM-30"), (SELECT `id` FROM `teaching_staff` WHERE `name` = "Ajdin" AND `surname` = "Vatres")),
    ((SELECT `id` FROM `courses` WHERE `code` = "IIM-30"), (SELECT `id` FROM `teaching_staff` WHERE `name` = "Faris" AND `surname` = "Ferizbegovic")),
    ((SELECT `id` FROM `courses` WHERE `code` = "MT-03"), (SELECT `id` FROM `teaching_staff` WHERE `name` = "Kanita" AND`surname` = "Lemes")),
    ((SELECT `id` FROM `courses` WHERE `code` = "RIM-02"), (SELECT `id` FROM `teaching_staff` WHERE `name` = "Zejd" AND `surname` = "Imamovic"));


    SELECT * FROM `courses_teachers`;

INSERT INTO employee VALUES
('AJIT NAYAK', 123100, '1955-04-25', '73 BOSTON', 'M', 25000, NULL, 1),
('SATYA', 495823, '1966-07-17', '26 FINE OAK', 'M', 32770, 123100, 4),
('AJIT BEHERA', 315152, '1971-07-09', '10 KALINGA', 'M', 32802, 123100, 3),
('UMASHANKAR', 216852, '1967-07-17', '26 FINE OAK', 'M', 32770, 123100, 2),
('BHAGWAT', 215152, '1971-03-23', '55 FLORIDA', 'M', 32802, 216852, 2),
('MEENAKSHI', 334548, '1979-04-25', '73 BRIKLY', 'F', 25125, 215152, 3),
('JASWASI', 215485, '1979-08-12', '17 BOSTON', 'M', 20500, 495823, 4),
('NIHAR NAYAK', 334524, '1966-12-17', '73 DALLAS', 'M', 29105, 215152, 3),
('DEBASMITA', 295485, '1970-04-16', '1 QUEENS LAND', 'F', 20500, 216852, 2);

SELECT * FROM employee;
--     ename     | esrno  |   bdate    |    address     | sex | salary | mgrsrno | dno
-- --------------+--------+------------+----------------+-----+--------+---------+-----
--  AJIT NAYAK   | 133100 | 1955-04-25 | 73 BOSTON      | M   |  35000 |         |   1
--  SATYA        | 495823 | 1966-07-17 | 26 FINE OAK    | M   |  32770 |  133100 |   4
--  AJIT BEHERA  | 315152 | 1971-07-09 | 10 KALINGA     | M   |  32802 |  133100 |   3
--  UMASHANKAR   | 216852 | 1967-07-17 | 26 FINE OAK    | M   |  32770 |  133100 |   2
--  BHAGWAT      | 215152 | 1971-03-23 | 55 FLORIDA     | M   |  32802 |  216852 |   2
--  MEENAKSHI    | 334548 | 1979-04-25 | 73 BRIKLY      | F   |  25125 |  315152 |   3
--  JASWASI      | 215485 | 1979-08-12 | 17 BOSTON      | M   |  20500 |  495823 |   4
--  NIHAR NAYAK  | 334524 | 1966-12-17 | 73 DALLAS      | M   |  29105 |  315152 |   3
--  DEBASMITA    | 295485 | 1970-04-16 | 1 QUEENS LAND  | F   |  20500 |  216852 |   2

INSERT INTO department VALUES
('RESEARCH', 4, 495823, '1999-04-20'),
('ADMIN', 1, 123100, '1988-01-06'),
('PROJECT', 2, 216852, '1999-07-17'),
('ACADEMIC', 3, 315152, '1989-12-20');

SELECT * FROM department;
--   dname   | dnumber | mgrsrno | mgrstartd
-- ----------+---------+---------+------------
--  RESEARCH |       4 |  495823 | 1999-04-20
--  ADMIN    |       1 |  133100 | 1988-01-06
--  PROJECT  |       2 |  216852 | 1999-07-17
--  ACADEMIC |       3 |  315152 | 1989-12-20

INSERT INTO dept_loc VALUES
(2, 'SINGAPORE'),
(1, 'INDIA'),
(4, 'QUEENSLAND'),
(3, 'LONDON');

SELECT * FROM dept_loc;
--  dnumber | dlocation
-- ---------+------------
--        2 | SINGAPORE
--        1 | INDIA
--        4 | QUEENSLAND
--        3 | LONDON

INSERT INTO project VALUES
('NETWORKING', 11, 'KOREA', 4),
('BIO INFORMATICS', 19, 'SOUTH AFRICA', 3),
('LINUX', 17, 'INDIA', 2);

SELECT * FROM project;
--       pname      | pnumber |  plocation   | dnum
-- -----------------+---------+--------------+------
--  NETWORKING      |      11 | KOREA        |    4
--  BIO INFORMATICS |      17 | SOUTH AFRICA |    3
--  LINUX           |      19 | INDIA        |    2

INSERT INTO works_on VALUES
(495823, 11, 5.27),
(215152, 17, 2.32),
(495823, 11, 4.15),
(315152, 19, 1.25),
(334548, 19, 2.28),
(215485, 17, 1.25),
(295485, 17, 5.25),
(334548, 19, 2.54),
(295485, 17, 7.20),
(216852, 17, 2.41),
(334524, 19, 3.24),
(295485, 17, 1.36),
(495823, 11, 2.26),
(215152, 17, 1.25),
(495823, 11, 3.14),
(315152, 19, 2.05),
(334548, 19, 2.50);

SELECT * FROM works_on;
--  esrno  | pno | hours
-- --------+-----+-------
--  495823 |  11 |  5.27
--  215152 |  17 |  2.32
--  495823 |  11 |  4.15
--  315152 |  19 |  1.25
--  334548 |  19 |  3.28
--  215485 |  17 |  1.25
--  295485 |  17 |  5.35
--  334548 |  19 |  2.54
--  295485 |  17 |  7.20
--  216852 |  17 |  2.41
--  334524 |  19 |  3.24
--  295485 |  17 |  1.36
--  495823 |  11 |  2.36
--  215152 |  17 |  1.25
--  495823 |  11 |  3.14
--  315152 |  19 |  2.05
--  334548 |  19 |  2.50
--  215485 |  17 |  2.34
-- PRIMARY KEY --
ALTER TABLE employee ADD PRIMARY KEY(esrno);

--  Column  |         Type          | Collation | Nullable | Default
-- ---------+-----------------------+-----------+----------+---------
--  ename   | character varying(20) |           |          |
--  esrno   | integer               |           | not null |
--  bdate   | date                  |           |          |
--  address | character varying(30) |           |          |
--  sex     | character(1)          |           |          |
--  salary  | numeric(6,0)          |           |          |
--  mgrsrno | integer               |           |          |
--  dno     | integer               |           |          |

ALTER TABLE department ADD PRIMARY KEY(dnumber);

--   Column   |         Type          | Collation | Nullable | Default
-- -----------+-----------------------+-----------+----------+---------
--  dname     | character varying(20) |           |          |
--  dnumber   | integer               |           | not null |
--  mgrsrno   | integer               |           |          |
--  mgrstartd | date                  |           |          |

ALTER TABLE dept_loc ADD PRIMARY KEY(dnumber,dlocation);

--   Column   |         Type          | Collation | Nullable | Default
-- -----------+-----------------------+-----------+----------+---------
--  dnumber   | integer               |           | not null |
--  dlocation | character varying(20) |           | not null |

ALTER TABLE project ADD PRIMARY KEY(pnumber);

--   Column   |         Type          | Collation | Nullable | Default
-- -----------+-----------------------+-----------+----------+---------
--  pname     | character varying     |           |          |
--  pnumber   | integer               |           | not null |
--  plocation | character varying(20) |           |          |
--  dnum      | integer               |           |          |

ALTER TABLE works_on ADD PRIMARY KEY(esrno,pno,hours);

--  Column |     Type     | Collation | Nullable | Default
-- --------+--------------+-----------+----------+---------
--  esrno  | integer      |           | not null |
--  pno    | integer      |           | not null |
--  hours  | numeric(3,2) |           | not null |



-- FOREIGN KEY --
ALTER TABLE employee ADD CONSTRAINT fk_emp_mgr FOREIGN KEY(mgrsrno) REFERENCES employee(esrno);

ALTER TABLE employee ADD CONSTRAINT fk_dno FOREIGN KEY(dno) REFERENCES department(dnumber);

ALTER TABLE department ADD CONSTRAINT fk_dept_mgr FOREIGN KEY(mgrsrno) REFERENCES employee(esrno);

ALTER TABLE dept_loc ADD CONSTRAINT fk_dnum FOREIGN KEY(dnumber) REFERENCES department(dnumber);

ALTER TABLE project ADD CONSTRAINT fk_dnumber FOREIGN KEY(dnum) REFERENCES department(dnumber);

ALTER TABLE works_on ADD CONSTRAINT fk_pno FOREIGN KEY(pno) REFERENCES project(pnumber);

ALTER TABLE works_on ADD CONSTRAINT fk_esrno FOREIGN KEY(esrno) REFERENCES employee(esrno);

-- Foreign-key constraints:
--     "fk_emp_mgr" FOREIGN KEY (mgrsrno) REFERENCES employee(esrno)
--     "fk_dno" FOREIGN KEY (dno) REFERENCES department(dnumber)
-- Referenced by:
--     TABLE "employee" CONSTRAINT "fk_emp_mgr" FOREIGN KEY (mgrsrno) REFERENCES employee(esrno)
--     TABLE "department" CONSTRAINT "fk_dept_mgr" FOREIGN KEY (mgrsrno) REFERENCES employee(esrno)
--     TABLE "works_on" CONSTRAINT "fk_esrno" FOREIGN KEY (esrno) REFERENCES employee(esrno)

-- Foreign-key constraints:
--     "fk_emp_mgr" FOREIGN KEY (mgrsrno) REFERENCES employee(esrno)
-- Referenced by:
--     TABLE "employee" CONSTRAINT "fk_dno" FOREIGN KEY (dno) REFERENCES department(dnumber)
--     TABLE "dept_loc" CONSTRAINT "fk_dnum" FOREIGN KEY (dnumber) REFERENCES department(dnumber)
--     TABLE "project" CONSTRAINT "fk_dnumber" FOREIGN KEY (dnum) REFERENCES department(dnumber)

-- Foreign-key constraints:
--     "fk_dnum" FOREIGN KEY (dnumber) REFERENCES department(dnumber)

-- Foreign-key constraints:
--     "fk_dnumber" FOREIGN KEY (dnum) REFERENCES department(dnumber)
-- Referenced by:
--     TABLE "works_on" CONSTRAINT "fk_pno" FOREIGN KEY (pno) REFERENCES project(pnumber)

-- Foreign-key constraints:
--     "fk_esrno" FOREIGN KEY (esrno) REFERENCES employee(esrno)
--     "fk_pno" FOREIGN KEY (pno) REFERENCES project(pnumber)

-- OTHER CONSTRAINTS

-- FOR EMPLOYEE TABLE --
ALTER TABLE emp ALTER COLUMN ENAME SET NOT NULL;
ALTER TABLE emp ALTER COLUMN ESRNO TYPE NUMERIC(6);
ALTER TABLE emp ADD CONSTRAINT check_bdate CHECK(BDATE>='1955-1-1' AND BDATE<='1979-12-31');
ALTER TABLE emp ALTER COLUMN SEX SET DEFAULT 'M';
ALTER TABLE emp ADD CONSTRAINT salary_check CHECK(SALARY>=20000 AND SALARY<=40000);

--  Column  |         Type          | Collation | Nullable |   Default
-- ---------+-----------------------+-----------+----------+-------------
--  ename   | character varying(20) |           | not null |
--  esrno   | numeric(6,0)          |           | not null |
--  bdate   | date                  |           |          |
--  address | character varying(30) |           |          |
--  sex     | character(1)          |           |          | 'M'::bpchar
--  salary  | numeric(6,0)          |           |          |
--  mgrsrno | integer               |           |          |
--  dno     | integer               |           |          |

-- Check constraints:
--     "check_bdate" CHECK (bdate >= '1955-01-01'::date AND bdate <= '1979-12-31'::date)
--     "check_sal" CHECK (salary >= 20000::numeric AND salary <= 40000::numeric)

-- FOR DEPARTMENT TABLE --
ALTER TABLE department ALTER COLUMN DNAME SET DEFAULT ('RESEARCH','ADMIN','PROJECT','ACADEMIC');
ALTER TABLE department ADD CONSTRAINT dnum_check CHECK(DNUMBER>=0 AND DNUMBER<=4);


--   Column   |         Type          | Collation | Nullable |                     Default
-- -----------+-----------------------+-----------+----------+-------------------------------------------------
--  dname     | character varying(20) |           |          | ROW('RESEARCH', 'ADMIN', 'PROJECT', 'ACADEMIC')

-- Check constraints:
--     "dnum_check" CHECK (dnumber >= 0 AND dnumber <= 4)

-- FOR DEPARTMENT LOCATION TABLE --
ALTER TABLE dept_loc ADD CONSTRAINT dnum_check CHECK(DNUMBER>=0 AND DNUMBER<=4);
ALTER TABLE dept_loc ALTER COLUMN DLOCATION SET DEFAULT ('SINGAPORE','INDIA','QUEENSLAND','LONDON');

--   Column   |         Type          | Collation | Nullable |                      Default
-- -----------+-----------------------+-----------+----------+---------------------------------------------------
--  dnumber   | integer               |           | not null |
--  dlocation | character varying(20) |           | not null | ROW('SINGAPORE', 'INDIA', 'QUEENSLAND', 'LONDON')

-- Check constraints:
--     "dnum_checked" CHECK (dnumber >= 0 AND dnumber <= 4)

-- FOR PROJECT TABLE --
ALTER TABLE project ALTER COLUMN PNAME SET DEFAULT ('NETWORKING','BIO INFORMATICS','LINUX');
ALTER TABLE project ALTER COLUMN DLOCATION SET DEFAULT ('KOREA','SOUTH AFRICA','INDIA');

--   Column   |         Type          | Collation | Nullable |                    Default
-- -----------+-----------------------+-----------+----------+-----------------------------------------------
--  pname     | character varying     |           |          | ROW('NETWORKING', 'BIO INFORMATICS', 'LINUX')
--  pnumber   | integer               |           | not null |
--  plocation | character varying(20) |           |          | ROW('KOREA', 'SOUTH AFRICA', 'INDIA')
--  dnum      | integer               |           |          |

-- FOR WORKS_ON TABLE --
ALTER TABLE works_on ADD CONSTRAINT col_check CHECK(0<=ESRNO AND 0<=PNO AND 0<=HOURS);

--  Column |     Type     | Collation | Nullable | Default
-- --------+--------------+-----------+----------+---------
--  esrno  | integer      |           | not null |
--  pno    | integer      |           | not null |
--  hours  | numeric(3,2) |           | not null |

-- Check constraints:
--     "check_col" CHECK (esrno >= 0 AND pno >= 0 AND hours >= 0::numeric)

CREATE TABLE employee(
    ename    character varying(20),
    esrno    integer,
    bdate    date,
    address  character varying(30),
    sex      character(1),
    salary   numeric(6,0),
    mgrsrno  integer,
    dno      integer;
)

\d employee
--  Column  |         Type          | Collation | Nullable | Default
-- ---------+-----------------------+-----------+----------+---------
--  ename   | character varying(20) |           |          |
--  esrno   | integer               |           |          |
--  bdate   | date                  |           |          |
--  address | character varying(30) |           |          |
--  sex     | character(1)          |           |          |
--  salary  | numeric(6,0)          |           |          |
--  mgrsrno | integer               |           |          |
--  dno     | integer               |           |          |

CREATE TABLE department(
    dname     character varying(20),
    dnumber   integer,
    mgrsrno   integer,
    mgrstartd date;
)

\d department
--   Column   |         Type          | Collation | Nullable | Default
-- -----------+-----------------------+-----------+----------+---------
--  dname     | character varying(20) |           |          |
--  dnumber   | integer               |           |          |
--  mgrsrno   | integer               |           |          |
--  mgrstartd | date                  |           |          |

CREATE TABLE dept_loc(
    dnumber   integer,
    dlocation character varying(20);
)

\d dept_loc
--   Column   |         Type          | Collation | Nullable | Default
-- -----------+-----------------------+-----------+----------+---------
--  dnumber   | integer               |           |          |
--  dlocation | character varying(20) |           |          |

CREATE TABLE project(
    pname      character varying(20),
    pnumber    integer,
    plocation  character varying(20),
    dnum       integer;
)

\d project
--   Column   |         Type          | Collation | Nullable | Default
-- -----------+-----------------------+-----------+----------+---------
--  pname     | character varying     |           |          |
--  pnumber   | integer               |           |          |
--  plocation | character varying(20) |           |          |
--  dnum      | integer               |           |          |

CREATE TABLE works_on(
    esrno  integer,
    pno    integer, 
    hours  numeric(3,2);
)

\d works_on
--  Column |     Type     | Collation | Nullable | Default
-- --------+--------------+-----------+----------+---------
--  esrno  | integer      |           |          |
--  pno    | integer      |           |          |
--  hours  | numeric(3,2) |           |          |
1.
DECLARE
    dup_row EXCEPTION;
BEGIN
    INSERT INTO student(rollno, name)
    VALUES (101, 'Adarsh');

EXCEPTION
    WHEN DUP_VAL_ON_INDEX THEN
        RAISE dup_row;

    WHEN dup_row THEN
        DBMS_OUTPUT.PUT_LINE('Duplicate row detected!');
END;
/

2.
DECLARE
    CURSOR dept_cursor IS
        SELECT deptno, MIN(sal) min_sal, MAX(sal) max_sal
        FROM emp
        GROUP BY deptno;

    min_sal_ex EXCEPTION;
    max_sal_ex EXCEPTION;
BEGIN
    FOR rec IN dept_cursor LOOP
        
        IF rec.min_sal < 1000 THEN
            RAISE min_sal_ex;
        END IF;

        IF rec.max_sal > 4000 THEN
            RAISE max_sal_ex;
        END IF;

    END LOOP;

EXCEPTION
    WHEN min_sal_ex THEN
        DBMS_OUTPUT.PUT_LINE('Minimum salary less than 1000!');
    WHEN max_sal_ex THEN
        DBMS_OUTPUT.PUT_LINE('Maximum salary greater than 4000!');
END;
/

3.
DECLARE
    CURSOR c IS
        SELECT deptno, COUNT(*) emp_count
        FROM emp
        GROUP BY deptno;

    low_employee EXCEPTION;
BEGIN
    FOR rec IN c LOOP
        
        IF rec.emp_count < 5 THEN
            RAISE low_employee;
        END IF;

    END LOOP;

EXCEPTION
    WHEN low_employee THEN
        DBMS_OUTPUT.PUT_LINE('Department has less than 5 employees!');
END;
/

4.
DECLARE
    no_commission_exp EXCEPTION;
    cnt NUMBER;
BEGIN
    SELECT COUNT(*) INTO cnt
    FROM emp
    WHERE deptno = 30 AND comm IS NULL;

    IF cnt > 0 THEN
        RAISE no_commission_exp;
    END IF;

EXCEPTION
    WHEN no_commission_exp THEN
        DBMS_OUTPUT.PUT_LINE('Employees without commission in Dept 30!');
END;
/

5.
CREATE TABLE Project (
    pno NUMBER PRIMARY KEY,
    pname VARCHAR2(50),
    plocation VARCHAR2(50),
    empno NUMBER,
    FOREIGN KEY (empno) REFERENCES emp(empno)
);

CREATE SEQUENCE proj_seq
START WITH 1
INCREMENT BY 1;

DECLARE
    proj_limit EXCEPTION;
    cnt NUMBER;
BEGIN
    SELECT COUNT(*) INTO cnt
    FROM project
    WHERE empno = 101;

    IF cnt >= 4 THEN
        RAISE proj_limit;
    ELSE
        INSERT INTO project
        VALUES (proj_seq.NEXTVAL, 'AI Project', 'BBSR', 101);
    END IF;

EXCEPTION
    WHEN proj_limit THEN
        DBMS_OUTPUT.PUT_LINE('Employee cannot work on more than 4 projects!');
END;
/

6.
DECLARE
    CURSOR c IS
        SELECT ename, job FROM emp WHERE deptno = 20;

    stop_ex EXCEPTION;
    count_emp NUMBER := 0;
BEGIN
    FOR rec IN c LOOP
        count_emp := count_emp + 1;

        DBMS_OUTPUT.PUT_LINE(rec.ename || ' - ' || rec.job);

        IF count_emp = 2 THEN
            RAISE stop_ex;
        END IF;
    END LOOP;

EXCEPTION
    WHEN stop_ex THEN
        DBMS_OUTPUT.PUT_LINE('Stopped after 2 employees!');
END;
/

7.
DECLARE
    CURSOR c IS
        SELECT ename, hiredate FROM emp;

    low_exp EXCEPTION;
    years NUMBER;
BEGIN
    FOR rec IN c LOOP
        
        years := FLOOR(MONTHS_BETWEEN(SYSDATE, rec.hiredate)/12);

        DBMS_OUTPUT.PUT_LINE(rec.ename || ' worked ' || years || ' years');

        IF years < 15 THEN
            RAISE low_exp;
        END IF;

    END LOOP;

EXCEPTION
    WHEN low_exp THEN
        DBMS_OUTPUT.PUT_LINE('Employee has less than 15 years experience!');
END;
/

8.
DECLARE
    CURSOR dept_cur IS
        SELECT d.deptno, d.dname, e.ename
        FROM dept d
        LEFT JOIN emp e ON d.deptno = e.deptno;

    no_emp EXCEPTION;
BEGIN
    FOR rec IN dept_cur LOOP
        
        IF rec.ename IS NULL THEN
            RAISE no_emp;
        END IF;

        DBMS_OUTPUT.PUT_LINE(rec.deptno || ' ' || rec.dname || ' ' || rec.ename);

    END LOOP;

EXCEPTION
    WHEN no_emp THEN
        DBMS_OUTPUT.PUT_LINE('Department has no employees!');
END;
/


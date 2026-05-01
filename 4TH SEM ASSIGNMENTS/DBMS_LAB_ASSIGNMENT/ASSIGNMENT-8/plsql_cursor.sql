1
DECLARE
  CURSOR c1 IS SELECT * FROM emp;
  v_emp emp%ROWTYPE;
BEGIN
  OPEN c1;
  LOOP
    FETCH c1 INTO v_emp;
    EXIT WHEN c1%NOTFOUND;
    DBMS_OUTPUT.PUT_LINE(v_emp.empno || ' ' || v_emp.ename || ' ' || v_emp.sal);
  END LOOP;
  CLOSE c1;
END;

2
DECLARE
  CURSOR c2 IS SELECT ename, hiredate FROM emp ORDER BY hiredate;
BEGIN
  FOR rec IN c2 LOOP
    DBMS_OUTPUT.PUT_LINE(rec.ename || ' ' || rec.hiredate);
  END LOOP;
END;

3
DECLARE
  CURSOR c3 IS
    SELECT ename, deptno, sal
    FROM emp e
    WHERE sal = (SELECT MAX(sal) FROM emp WHERE deptno = e.deptno);
BEGIN
  FOR rec IN c3 LOOP
    DBMS_OUTPUT.PUT_LINE(rec.ename || ' Dept:' || rec.deptno);
  END LOOP;
END;

4
DECLARE
  CURSOR c4 IS SELECT ename, deptno FROM emp WHERE sal > 3000;
BEGIN
  FOR rec IN c4 LOOP
    DBMS_OUTPUT.PUT_LINE(rec.ename || ' Dept:' || rec.deptno);
  END LOOP;
END;

5
DECLARE
  CURSOR c5 IS SELECT deptno, COUNT(*) cnt FROM emp GROUP BY deptno;
BEGIN
  FOR rec IN c5 LOOP
    DBMS_OUTPUT.PUT_LINE('Dept ' || rec.deptno || ' Count: ' || rec.cnt);
  END LOOP;
END;

6
DECLARE
  CURSOR c6 IS
    SELECT ename, comm FROM emp
    WHERE comm = (SELECT MAX(comm) FROM emp)
       OR comm = (SELECT MIN(comm) FROM emp WHERE comm IS NOT NULL);
BEGIN
  FOR rec IN c6 LOOP
    DBMS_OUTPUT.PUT_LINE(rec.ename || ' Comm:' || rec.comm);
  END LOOP;
END;

7
CREATE OR REPLACE VIEW emp_view AS SELECT * FROM emp;

DECLARE
  CURSOR c7 IS SELECT ename FROM emp_view WHERE sal > 1000;
BEGIN
  FOR rec IN c7 LOOP
    DBMS_OUTPUT.PUT_LINE(rec.ename);
  END LOOP;
END;

8
DECLARE
  CURSOR c8 IS SELECT ename FROM emp WHERE deptno IN (10,20,30);
BEGIN
  FOR rec IN c8 LOOP
    DBMS_OUTPUT.PUT_LINE(rec.ename);
  END LOOP;
END;

9
DECLARE
  CURSOR c9 IS SELECT ename FROM emp WHERE job LIKE 'C%';
BEGIN
  FOR rec IN c9 LOOP
    DBMS_OUTPUT.PUT_LINE(rec.ename);
  END LOOP;
END;

10
DECLARE
  v_months NUMBER;
BEGIN
  SELECT MONTHS_BETWEEN(SYSDATE, hiredate)
  INTO v_months
  FROM emp WHERE empno = 7369;

  DBMS_OUTPUT.PUT_LINE('Months worked: ' || v_months);
END;

11
DECLARE
  CURSOR c11 IS
    SELECT ename, deptno, sal
    FROM emp e
    WHERE sal < (SELECT AVG(sal) FROM emp WHERE deptno = e.deptno);
BEGIN
  FOR rec IN c11 LOOP
    DBMS_OUTPUT.PUT_LINE(rec.ename);
  END LOOP;
END;

12
DECLARE
  CURSOR c12 IS SELECT ename FROM emp WHERE comm IS NULL;
BEGIN
  FOR rec IN c12 LOOP
    DBMS_OUTPUT.PUT_LINE(rec.ename);
  END LOOP;
END;

13
DECLARE
  CURSOR c13 IS
    SELECT ename, hiredate FROM emp
    WHERE EXTRACT(YEAR FROM hiredate) < 2000
       OR EXTRACT(YEAR FROM hiredate) > 2000;
BEGIN
  FOR rec IN c13 LOOP
    DBMS_OUTPUT.PUT_LINE(rec.ename || ' ' || rec.hiredate);
  END LOOP;
END;

14
DECLARE
  CURSOR c_high IS
    SELECT ename FROM (
      SELECT ename FROM emp ORDER BY sal DESC
    ) WHERE ROWNUM <= 2;

  CURSOR c_low IS
    SELECT ename FROM (
      SELECT ename FROM emp ORDER BY sal ASC
    ) WHERE ROWNUM <= 2;
BEGIN
  DBMS_OUTPUT.PUT_LINE('Top 2 Highest Salaries:');
  FOR rec IN c_high LOOP
    DBMS_OUTPUT.PUT_LINE(rec.ename);
  END LOOP;

  DBMS_OUTPUT.PUT_LINE('Top 2 Lowest Salaries:');
  FOR rec IN c_low LOOP
    DBMS_OUTPUT.PUT_LINE(rec.ename);
  END LOOP;
END;
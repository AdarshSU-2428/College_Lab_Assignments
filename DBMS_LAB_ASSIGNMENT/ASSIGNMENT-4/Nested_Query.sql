TABLE CREATION
CREATE TABLE EMP (
    EMPNO     INTEGER,
    ENAME     VARCHAR(10),
    JOB       VARCHAR(15),
    MGR       INTEGER,
    HIREDATE  DATE,
    SAL       INTEGER,
    COMM      INTEGER,
    DEPTNO    INTEGER
);

CREATE TABLE DEPT (
    DNO        INTEGER,
    DNAME      VARCHAR(10),
    DLOCATION  VARCHAR(15)
);

CONSTRAINTS 
ALTER TABLE EMP ADD CONSTRAINT EMP_PK PRIMARY KEY (EMPNO);
ALTER TABLE DEPT ADD CONSTRAINT DNO_PK PRIMARY KEY (DNO);
ALTER TABLE EMP ADD CONSTRAINT EMP_FK FOREIGN KEY (DEPTNO) REFERENCES DEPT(DNO);

TABLE INSERTION
INSERT INTO EMP VALUES
(7499, 'ALLEN', 'SALESMAN', 7698, '1981-02-20', 1600, 300, 30),
(7521, 'WARD', 'SALESMAN', 7698, '1981-02-22', 1250, 500, 30),
(7566, 'JONES', 'MANAGER', 7839, '1981-04-02', 2975, NULL, 20),
(7654, 'MARTIN', 'SALESMAN', 7698, '1981-09-28', 1250, 1400, 30),
(7698, 'BLAKE', 'MANAGER', 7839, '1981-05-01', 2850, NULL, 30),
(7782, 'CLARK', 'MANAGER', 7839, '1981-06-09', 2450, NULL, 10),
(7788, 'SCOTT', 'ANALYST', 7566, '1982-12-09', 3000, NULL, 20),
(7839, 'KING', 'PRESIDENT', NULL, '1981-11-17', 5000, NULL, 10),
(7844, 'TURNER', 'SALESMAN', 7698, '1981-09-08', 1500, 0, 30),
(7876, 'ADAMS', 'CLERK', 7788, '1983-01-12', 1100, NULL, 20),
(7900, 'JAMES', 'CLERK', 7698, '1981-12-03', 950, NULL, 30),
(7902, 'FORD', 'ANALYST', 7566, '1981-12-03', 3000, NULL, 20),
(7934, 'MILLER', 'CLERK', 7782, '1982-01-23', 1300, NULL, 10);

INSERT INTO DEPT VALUES
(10, 'Accounting', 'NewYork'),
(20, 'Research', 'Dallas'),
(30, 'Sales', 'Chicago'),
(40, 'Operations', 'Boston');

1
SELECT e.ename, e.job, e.sal, e.deptno
FROM emp e
WHERE e.deptno = (SELECT deptno FROM emp WHERE ename = 'SMITH');

2
SELECT e.deptno, e.job, e.ename, e.sal
FROM emp e
WHERE e.sal > (SELECT AVG(sal) FROM emp WHERE deptno = e.deptno AND job = e.job);

3
SELECT e.deptno, e.empno, e.ename
FROM emp e
JOIN dept d ON e.deptno = d.deptno
WHERE d.dname = 'OPERATIONS';

4
SELECT e.ename, e.job, e.sal * 12 AS annual_salary, e.deptno
FROM emp e
WHERE e.sal > (SELECT sal FROM emp WHERE ename = 'JONES');

5
SELECT e.*
FROM emp e
WHERE e.hiredate > (SELECT hiredate FROM emp WHERE ename = 'MILLER');

6
SELECT e.*
FROM emp e
WHERE e.sal = (SELECT MIN(sal) FROM emp);

7
SELECT e.*
FROM emp e
WHERE e.job = (SELECT job FROM emp WHERE ename = 'BLAKE');

8
SELECT e.*
FROM emp e
WHERE e.sal > ALL (SELECT sal FROM emp WHERE deptno = 30);

9
SELECT e.*
FROM emp e
WHERE e.sal > (SELECT MIN(sal) FROM emp WHERE deptno = 30);

10
SELECT d.deptno, d.dname
FROM dept d
JOIN emp e ON d.deptno = e.deptno
GROUP BY d.deptno, d.dname
HAVING AVG(e.sal) > (SELECT AVG(sal) FROM emp WHERE deptno = 30);

11
SELECT job
FROM emp
GROUP BY job
ORDER BY AVG(sal) DESC
LIMIT 1;

12
SELECT ename, hiredate, CURRENT_DATE - hiredate AS days_passed FROM emp;

13
SELECT e.*
FROM emp e
JOIN dept d ON e.deptno = d.deptno
WHERE d.loc = 'CHICAGO';

14
SELECT e.ename, e.job, e.hiredate
FROM emp e
WHERE e.sal > (SELECT MAX(sal) FROM emp e2 JOIN dept d ON e2.deptno = d.deptno WHERE d.dname = 'SALES');

15
SELECT MAX(sal) AS second_max_salary
FROM emp
WHERE sal < (SELECT MAX(sal) FROM emp);

16
SELECT COUNT(*) AS dept_count
FROM emp
GROUP BY deptno
HAVING COUNT(empno) > 5;

17
SELECT COUNT(*) AS no_comm_employees
FROM emp
WHERE comm IS NULL OR comm = 0;





1
SELECT e.ename, e.address, d.dnumber, d.dname
FROM emp e
JOIN department d ON e.dno = d.dnumber;

2
SELECT e.ename, e.salary, d.dname, d.mgrstartdate
FROM emp e
JOIN department d ON e.esrno = d.mgrsrno;

3
SELECT d.dname, d.dnumber, l.dlocation
FROM department d
JOIN dept_loc l ON d.dnumber = l.dnumber;

4
SELECT p.pname, p.pnumber, p.plocation, w.hours
FROM project p
JOIN works_on w ON p.pnumber = w.pno;

5
SELECT e.ename
FROM emp e
JOIN department d ON e.dno = d.dnumber
WHERE d.dname = 'ACADEMIC';

6
SELECT e.*
FROM emp e
JOIN department d ON e.esrno = d.mgrsrno
WHERE d.mgrstartdate = '1999-07-17';

7
SELECT e.*
FROM emp e
JOIN project p ON e.dno = p.dnum
WHERE p.pname = 'BIO INFORMATICS';

8
SELECT e.*
FROM emp e
JOIN project p ON e.dno = p.dnum
WHERE p.pname = 'LINUX';

9
SELECT p.plocation
FROM emp e
JOIN works_on w ON e.esrno = w.esrno
JOIN project p ON w.pno = p.pnumber
WHERE e.ename = 'SATYA';

10
SELECT e.*
FROM emp e
JOIN works_on w ON e.esrno = w.esrno
JOIN project p ON w.pno = p.pnumber
WHERE p.plocation = 'SOUTH AFRICA';

11
SELECT SUM(w.hours)
FROM works_on w
JOIN project p ON w.pno = p.pnumber
WHERE p.pname = 'NETWORKING';

12
SELECT e.*
FROM emp e
JOIN department d ON e.dno = d.dnumber
JOIN dept_loc l ON d.dnumber = l.dnumber
WHERE l.dlocation = 'INDIA';

13
SELECT e.ename, SUM(w.hours) AS total_hours
FROM emp e
JOIN works_on w ON e.esrno = w.esrno
GROUP BY e.ename;

14
SELECT SUM(w.hours)
FROM works_on w
JOIN project p ON w.pno = p.pnumber
WHERE p.pname = 'LINUX';

15
SELECT e.*
FROM emp e
JOIN works_on w ON e.esrno = w.esrno
JOIN project p ON w.pno = p.pnumber
WHERE p.plocation = 'INDIA';

16
SELECT e.esrno, e.ename, d.dnumber, d.dname, p.pname, w.hours
FROM emp e
JOIN department d ON e.dno = d.dnumber
JOIN works_on w ON e.esrno = w.esrno
JOIN project p ON w.pno = p.pnumber;

17
SELECT e.ename
FROM emp e
JOIN department d ON e.dno = d.dnumber
WHERE d.dname = 'RESEARCH';

18
SELECT DISTINCT e.*
FROM emp e
JOIN works_on w ON e.esrno = w.esrno
WHERE w.hours > 5;

19
SELECT e.ename, d.dname
FROM emp e
JOIN department d ON e.dno = d.dnumber
WHERE d.dname <> 'ACADEMIC';

20
SELECT SUM(w.hours)
FROM emp e
JOIN works_on w ON e.esrno = w.esrno
WHERE e.sex = 'F';
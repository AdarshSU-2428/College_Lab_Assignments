1
UPDATE emp SET SALARY = SALARY + 500;

2
UPDATE emp SET SALARY = SALARY + SALARY * 0.005 WHERE DNO = 4;

3
UPDATE emp SET address = 'PRASHANTI VIHAR' WHERE ename = 'UMASHANKAR';

4
UPDATE emp SET SALARY = SALARY + 1000 WHERE mgreno IS NULL;

5
UPDATE emp SET SALARY = SALARY - 1000 WHERE SEX = 'F';

6
UPDATE department SET mgreno = 215152 WHERE dnumber = 3;

7
UPDATE dept-loc SET dlocation = 'INDIA' WHERE dnumber = 4;

8
UPDATE project SET pname = 'LINUX' WHERE pnumber = 19;

9
UPDATE project SET elocation = 'INDIA' WHERE dname = 'PROJECT';

10
UPDATE department SET mgrstartd = '30-June-1999' WHERE dname = 'PROJECT';

11
DELETE FROM emp WHERE ename = 'DEBASMITA';

12
DELETE FROM works_on WHERE esrno = 295485;

13
DELETE FROM works_on WHERE esrno = 315152;

14
UPDATE department SET mgrsrno = 315152 WHERE esrno = 315152;
DELETE FROM employee WHERE dob = '23-MAR-1971';

15
UPDATE emp SET dno = 3 WHERE address = '26 FINE OAK';

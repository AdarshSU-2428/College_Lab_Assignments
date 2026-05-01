1.
CREATE OR REPLACE PROCEDURE hello_proc IS
BEGIN
    DBMS_OUTPUT.PUT_LINE('Hello World!');
END;
/

--procedure call
BEGIN
    hello_proc;
END;
/

2.
CREATE OR REPLACE PROCEDURE insert_student(
    rno NUMBER,
    name VARCHAR2
) IS
BEGIN
    INSERT INTO student VALUES (rno, name);
    COMMIT;
END;
/

--procedure call
BEGIN
    insert_student(101, 'Ayush');
END;
/

3.
CREATE OR REPLACE PROCEDURE smallest_num(
    a NUMBER,
    b NUMBER,
    c NUMBER
) IS
    min_num NUMBER;
BEGIN
    min_num := LEAST(a, b, c);
    DBMS_OUTPUT.PUT_LINE('Smallest number is: ' || min_num);
END;
/

--procedure call
BEGIN
    smallest_num(10, 5, 8);
END;
/

4.
CREATE OR REPLACE PROCEDURE square_num(n NUMBER) IS
BEGIN
    DBMS_OUTPUT.PUT_LINE('Square is: ' || (n*n));
END;
/

--procedure call
BEGIN
    square_num(6);
END;
/

5.
CREATE OR REPLACE PROCEDURE get_emp_name(
    eno NUMBER
) IS
    ename emp.ename%TYPE;
BEGIN
    SELECT ename INTO ename
    FROM emp
    WHERE empno = eno;

    DBMS_OUTPUT.PUT_LINE('Employee Name: ' || ename);

EXCEPTION
    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('Employee not found!');
END;
/

--procedure call
BEGIN
    get_emp_name(7369);
END;
/

6.
CREATE OR REPLACE PROCEDURE all_employees IS
    CURSOR c IS SELECT * FROM emp;
BEGIN
    FOR rec IN c LOOP
        DBMS_OUTPUT.PUT_LINE(
            rec.empno || ' ' || rec.ename || ' ' || rec.job || ' ' || rec.sal
        );
    END LOOP;
END;
/

--procedure call
BEGIN
    all_employees;
END;
/

7.
CREATE OR REPLACE PROCEDURE emp_salary_check IS
    CURSOR c IS SELECT ename, sal FROM emp;
    low_sal EXCEPTION;
BEGIN
    FOR rec IN c LOOP
        DBMS_OUTPUT.PUT_LINE(rec.ename || ' ' || rec.sal);

        IF rec.sal < 1000 THEN
            RAISE low_sal;
        END IF;
    END LOOP;

EXCEPTION
    WHEN low_sal THEN
        DBMS_OUTPUT.PUT_LINE('Salary less than 1000 found!');
END;

--procedure call
BEGIN
    emp_salary_check;
END;
/

8.
CREATE OR REPLACE PROCEDURE insert_emp(
    eno NUMBER,
    name VARCHAR2,
    salary NUMBER
) IS
BEGIN
    INSERT INTO emp(empno, ename, sal)
    VALUES (eno, name, salary);
    COMMIT;
END;
/

--procedure call through jdbc
import java.sql.*;

public class CallProc {
    public static void main(String[] args) throws Exception {
        Connection con = DriverManager.getConnection(
            "jdbc:oracle:thin:@localhost:1521:xe", "system", "password");

        CallableStatement cs = con.prepareCall("{call insert_emp(?,?,?)}");

        cs.setInt(1, 101);
        cs.setString(2, "Adarsh");
        cs.setInt(3, 3000);

        cs.execute();

        System.out.println("Record inserted!");

        con.close();
    }
}

9.
CREATE OR REPLACE FUNCTION update_salary(
    eno NUMBER,
    newsal NUMBER
) RETURN NUMBER IS
BEGIN
    UPDATE emp
    SET sal = newsal
    WHERE empno = eno;

    RETURN SQL%ROWCOUNT;
END;
/

--procedure call through jdbc
import java.sql.*;

public class CallFunction {
    public static void main(String[] args) throws Exception {
        Connection con = DriverManager.getConnection(
            "jdbc:oracle:thin:@localhost:1521:xe", "system", "password");

        CallableStatement cs = con.prepareCall("{? = call update_salary(?,?)}");

        cs.registerOutParameter(1, Types.INTEGER);
        cs.setInt(2, 101);
        cs.setInt(3, 5000);

        cs.execute();

        int result = cs.getInt(1);
        System.out.println("Rows updated: " + result);

        con.close();
    }
}
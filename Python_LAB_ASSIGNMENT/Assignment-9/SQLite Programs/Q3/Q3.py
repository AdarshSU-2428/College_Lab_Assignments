import sqlite3
conn = sqlite3.connect("Employee.db")
cur = conn.cursor()

##cur.execute("""
##              CREATE TABLE IF NOT EXISTS EMPLOYEE(EMPID INTEGER PRIMARY KEY,
##              ENAME TEXT, SALARY REAL)
##            """)

##data = [
##    (1, "Amit", 76000),
##    (2, "Riya", 87000),
##    (3, "Karan", 100000),
##    (4, "Sneha", 45000)
##]
##cur.executemany("INSERT INTO EMPLOYEE VALUES (?, ?, ?)", data)

##cur.execute("SELECT * FROM Employee WHERE Salary > 50000")
##print("Employees with salary > 50000:")
##for row in cur.fetchall():
##    print(row)

conn.commit()
conn.close()

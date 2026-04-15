import sqlite3

class EmployeeDB:
    def __init__(self):
        self.conn = sqlite3.connect("emp.db")
        self.cursor = self.conn.cursor()
        self.cursor.execute("""
        CREATE TABLE IF NOT EXISTS Employee(
            empID INTEGER PRIMARY KEY,
            empName TEXT,
            Salary INTEGER
        )
        """)

    def insert(self, empID, name, salary):
        self.cursor.execute("INSERT INTO Employee VALUES (?, ?, ?)", (empID, name, salary))
        self.conn.commit()

    def update(self, empID, salary):
        self.cursor.execute("UPDATE Employee SET Salary=? WHERE empID=?", (salary, empID))
        self.conn.commit()

    def delete(self, empID):
        self.cursor.execute("DELETE FROM Employee WHERE empID=?", (empID,))
        self.conn.commit()

    def display_high_salary(self):
        self.cursor.execute("SELECT * FROM Employee WHERE Salary > 50000")
        for row in self.cursor.fetchall():
            print(row)

    def close(self):
        self.conn.close()

db = EmployeeDB()
db.insert(1, "Amit", 60000)
db.insert(2, "Riya", 40000)

db.update(2, 55000)
db.display_high_salary()

db.delete(1)
db.close()

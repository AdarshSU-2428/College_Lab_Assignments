import sqlite3
conn = sqlite3.connect("school.db")
cur = conn.cursor()

##cur.execute("""
##               CREATE TABLE IF NOT EXISTS Student(
##               RollNo INTEGER PRIMARY KEY,
##               Name TEXT, Marks INTEGER
##            )""")

##students = [
##    (1, "Amrit", 80),
##    (2, "Bishal", 60),
##    (3, "Dhiraj", 90)
##]

##cur.executemany("INSERT INTO Student VALUES (?, ?, ?)", students)

##cur.execute("SELECT * FROM Student WHERE Marks > 75")
##print("Students scoring > 75:")
##for row in cur.fetchall():
##    print(row)

conn.commit()
conn.close()

import sqlite3

conn = sqlite3.connect("school.db")
cursor = conn.cursor()

cursor.execute("""
CREATE TABLE IF NOT EXISTS PUPILS(
    RollNo INTEGER PRIMARY KEY,
    Name TEXT,
    Marks INTEGER
)
""")

##students = [
##    (1, "Anish", 70),
##    (2, "Bhim", 85),
##    (3, "Rita", 90),
##    (4, "Debdutta", 60),
##    (5, "Eshwar", 75)
##]
##
##cursor.executemany("INSERT INTO PUPILS VALUES (?, ?, ?)", students)
##conn.commit()

print("All Students:")
cursor.execute("SELECT * FROM PUPILS")
for row in cursor.fetchall():
    print(row)

print("Above Average Students:")
cursor.execute("SELECT * FROM PUPILS WHERE Marks > (SELECT AVG(Marks) FROM PUPILS)")
for row in cursor.fetchall():
    print(row)

conn.close()

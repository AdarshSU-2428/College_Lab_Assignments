import sqlite3

conn = sqlite3.connect("school.db")
cur = conn.cursor()

cur.execute("SELECT * FROM Student ORDER BY Marks DESC")

print("Sorted Records (Descending Marks):")
for row in cur.fetchall():
    print(row)

conn.close()

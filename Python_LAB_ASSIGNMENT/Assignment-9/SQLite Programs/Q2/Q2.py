import sqlite3
conn = sqlite3.connect("student.db")
cur = conn.cursor()

##cur.execute("""
##              CREATE TABLE IF NOT EXISTS STUDENT(ROLLNO INTEGER,
##              NAME TEXT, MARKS INTEGER)
##            """)

##data = [
##    (1, "Amit", 76),
##    (2, "Riya", 85),
##    (3, "Karan", 96)
##]
##cur.executemany("INSERT INTO STUDENT VALUES (?, ?, ?)", data)

##print("All Records:")
##cur.execute("SELECT * FROM STUDENT")
##for row in cur.fetchall():
##    print(row)

##cur.execute("UPDATE STUDENT SET MARKS = 90 WHERE ROLLNO = 1")

##cur.execute("DELETE FROM STUDENT WHERE ROLLNO = 2")

##cur.execute("SELECT * FROM STUDENT")
##print("One Record:", cur.fetchone())

##count = 0
##cur.execute("SELECT * FROM STUDENT")
##for row in cur.fetchall():
##    count+=1
##print("Total no. of records: ",count)

conn.commit()
conn.close()

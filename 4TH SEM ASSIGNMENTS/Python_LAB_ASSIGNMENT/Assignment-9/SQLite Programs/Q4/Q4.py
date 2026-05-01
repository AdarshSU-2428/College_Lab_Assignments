import sqlite3
conn = sqlite3.connect("library.db")
cur = conn.cursor()

##cur.execute("""
##                CREATE TABLE IF NOT EXISTS BOOK(
##                BookID INTEGER PRIMARY KEY,
##                Title TEXT, Price INTEGER
##            )""")

##books = [
##    (1, "Python Basics", 600),
##    (2, "DSA Questions for Interview", 1500),
##    (3, "Backend 101", 1800)
##]

##cur.executemany("INSERT INTO BOOK VALUES (?, ?, ?)",books)

##cur.execute("SELECT * FROM BOOK")
##print("Books:", cur.fetchall())

##cur.execute("UPDATE BOOK SET Price = 650 WHERE BookID = 1")

##cur.execute("DELETE FROM BOOK WHERE BookID = 1")

conn.commit()
conn.close()

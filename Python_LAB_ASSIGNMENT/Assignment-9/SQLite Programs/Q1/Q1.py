import sqlite3
conn = sqlite3.connect("college.db")
print("Database Connected successfully")
conn.close()

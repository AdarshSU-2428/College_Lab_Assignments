import sqlite3

try:
    conn = sqlite3.connect("test.db")
    print("Connected successfully")

except sqlite3.Error as e:
    print("Error:", e)

finally:
    conn.close()
    print("Connection closed")

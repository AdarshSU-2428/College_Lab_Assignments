data = [
        ["Name", "Age", "Marks"],
        ["Hitesh", 21, 97],
        ["Geeta", 20, 93],
        ["Jayesh", 20, 74],
        ["Rita", 21, 72]
    ]

f = open("Q6.txt","w")
for row in data:
    line = str(row[0]) + "," + str(row[1]) + "," + str(row[2]) + "\n"
    f.write(line)
f.close()

f1 = open("Q6.txt","r",encoding="utf8")
next(f1)
for line in f1:
    d = line.strip().split(',')
    if int(d[2]) > 75:
        print(d[0], "scored", d[2])
f1.close()

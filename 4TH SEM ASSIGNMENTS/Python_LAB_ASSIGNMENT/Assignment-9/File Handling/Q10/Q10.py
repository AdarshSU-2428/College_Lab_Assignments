f = open("Q10.txt", "r", encoding="utf8")
seen = set()
duplicates = set()
for line in f:
    if line in seen:
        duplicates.add(line.strip())
    seen.add(line)
print("Duplicate lines:", list(duplicates))
f.close()

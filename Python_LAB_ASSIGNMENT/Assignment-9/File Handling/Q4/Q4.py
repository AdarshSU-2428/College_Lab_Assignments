f = open("Q4.txt", "r", encoding="utf8")
counts = {}
for line in f:
    words = line.split()
    for word in words:
        w = word.strip('.,!').lower()
        counts[w] = counts.get(w, 0) + 1
print(counts)
f.close()

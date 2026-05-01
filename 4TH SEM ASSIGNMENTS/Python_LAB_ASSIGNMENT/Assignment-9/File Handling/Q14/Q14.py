f = open("Q14.txt", "r", encoding="utf8")
out = open("Q14_rev.txt", "w")
for line in f:
    words = line.split()
    reversed_list = []
    for w in words:
        reversed_list.append(w[::-1])
    out.write(" ".join(reversed_list) + "\n")
f.close()
out.close()

print("Successfully Reversed in new file") 

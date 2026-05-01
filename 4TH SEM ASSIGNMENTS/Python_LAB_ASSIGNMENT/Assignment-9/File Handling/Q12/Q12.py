f = open("Q12.txt", "r", encoding="utf8")
for line in f:
    for word in line.split():
        if len(word.strip('.,!')) > 5:
            print(word)
f.close()

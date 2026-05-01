f = open("Q3.txt","r",encoding="utf8")
lines = f.readlines()

for line in lines :
    if line[0] in "aeiouAEIOU" :
        print(line.strip())
f.close()

f = open("Q7.txt","r",encoding="utf8")
data = f.read()
u, l, d = 0, 0, 0
for char in data :
    if char.isupper() :
        u += 1
    elif char.islower() :
        l += 1
    elif char.isdigit() :
        d += 1
print("Upper:", u, "Lower:", l, "Digits:", d)
f.close()

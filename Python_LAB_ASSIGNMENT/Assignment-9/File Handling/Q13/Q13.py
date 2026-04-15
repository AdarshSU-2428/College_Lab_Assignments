f = open("Q13.txt", "r", encoding="utf8")
v, c = 0, 0
for char in f.read().lower():
    if char.isalpha():
        if char in 'aeiou':
            v += 1
        else:
            c += 1
print("Vowels:", v, "Consonants:", c)
f.close()

f = open("Q8.txt", "r", encoding="utf8")
lines = f.readlines()
longest = ""
for line in lines:
    for word in line.split() :
        clean_word = word.strip(".,!")
        if len(clean_word) > len(longest) :
            longest = clean_word
print("Longest word is:", longest)
f.close()

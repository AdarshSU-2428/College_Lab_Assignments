search_word = input("Enter the word to be searched: ")
f = open("Q5.txt","r",encoding="utf8")
lines = f.readlines()
line_no = 1
for line in lines :
    if search_word in line :
        print("The word is in line:",line_no,":",line.strip())
    line_no += 1
f.close()


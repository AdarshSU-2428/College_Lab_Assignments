f = open("Q1.txt","r", encoding="utf-8")
lines = f.readlines()
line_count = len(lines)
word_count = 0
char_count = 0

for line in lines :
    words = line.split()
    word_count += len(words)
    char_count += len(line)

print("No. of lines: ",line_count)
print("No. of words: ",word_count)
print("No. of chars: ",char_count)

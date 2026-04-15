lines_per_file = 2
f = open("Q9.txt", "r", encoding="utf8")
all_lines = f.readlines()
f.close()

for i in range(0, len(all_lines), lines_per_file):
    out = open('split_' + str(i//lines_per_file) + '.txt', 'w')
    out.writelines(all_lines[i : i + lines_per_file])
    out.close()
    
print("Text Splitted Successfully")

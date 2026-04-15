f = open('Q11.txt', 'r')
even, odd, total = 0, 0, 0
for line in f:
    num = int(line.strip())
    total += num
    if num % 2 == 0:
        even += 1
    else:
        odd += 1
print("Even:", even, "Odd:", odd, "Sum:", total)
f.close()

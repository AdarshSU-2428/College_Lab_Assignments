f1 = open("Q2.txt","r", encoding="utf8")
data = f1.read()
f1.close()

f2 = open("Q2_copy.txt","w")
f2.write(data)
f2.close()

print("Data Successfully Copied")

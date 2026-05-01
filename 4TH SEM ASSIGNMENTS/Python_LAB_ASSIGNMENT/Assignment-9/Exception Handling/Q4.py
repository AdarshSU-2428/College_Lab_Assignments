try :
    f = open("sample.txt","r")
    print(f.read())
except FileNotFoundError :
    print("Error! File doesn't exist!")

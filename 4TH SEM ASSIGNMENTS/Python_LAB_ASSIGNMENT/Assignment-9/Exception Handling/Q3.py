try :
    l = [76, 34, 22, 87, 56]
    i = int(input("Enter the index to be accessed: "))
    print("The element is: ",l[i])
except IndexError :
    print("Error: Index is out of Range")

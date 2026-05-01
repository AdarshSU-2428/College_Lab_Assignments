try :
    a = int(input("Enter the first number: "))
    b = int(input("Enter the second number: "))
    res = a / b
    print("The result is: ",res)
except ZeroDivisionError :
    print("Error can't be divided by zero")

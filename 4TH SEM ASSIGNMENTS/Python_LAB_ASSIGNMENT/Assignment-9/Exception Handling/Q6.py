try :
    a = int(input("Enter the first number: "))
    b = int(input("Enter the second number: "))
    res = a / b
except ZeroDivisionError :
    print("Math Error! Can't be divided by zero!")
else :
    print("The result is: ",res)
finally :
    print("Good Bye!")

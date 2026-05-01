try :
    a = int(input("Enter first number: "))
    b = int(input("Enter second number: "))
    res = a / b
    print("The result is: ", res)
except ValueError :
    print("Invalid Input! Enter an integer!")
except ZeroDivisionError :
    print("Error! Can't be divided by zero!")

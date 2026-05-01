class NegativeNumberError(Exception):
    def __init__(self, val):
        self.val = val
    def __str__(self):
        return "The value " + str(self.val) + " is negative. Only positive numbers allowed."

try:
    num = float(input("Enter a number: "))
    if num < 0:
        raise NegativeNumberError(num)
    print("Number accepted.")
except NegativeNumberError as e:
    print("Error! " + str(e))

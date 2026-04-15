class InvalidMarksError(Exception):
    def __init__(self, marks):
        self.marks = marks

    def __str__(self):
        return "The marks " + str(self.marks) + " is invalid. Must be between 0 and 100."

try:
    m = int(input("Enter the marks: "))
    if m < 0 or m > 100:
        raise InvalidMarksError(m)
    print("Marks accepted: " + str(m))
except InvalidMarksError as e:
    print("Error! " + str(e))
except ValueError:
    print("Error! Please enter a valid integer.")

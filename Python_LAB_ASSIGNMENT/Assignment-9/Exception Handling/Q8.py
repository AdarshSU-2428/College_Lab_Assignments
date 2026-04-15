class InvalidAgeError(Exception) :
    def __init__(self, age) :
        self.age = age
    def __str__(self) :
        return "Age " + str(self.age) + " is too low. Not eligible to vote."

try :
    age = int(input("Enter the age: "))
    if age < 18 :
        raise InvalidAgeError(age)
    print("Eligible to Vote")
except InvalidAgeError as e :
    print("Error! "+str(e))
    

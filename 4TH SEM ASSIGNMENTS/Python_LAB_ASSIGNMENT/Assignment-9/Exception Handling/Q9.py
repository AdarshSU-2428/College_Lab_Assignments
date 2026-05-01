class WeakPasswordError(Exception) :
    def __init__(self, length) :
        self.length = length
    def __str__(self) :
        return "Password length "+str(self.length)+" is too short. Minimum 8 required."

try :
    pw = input("Enter the password: ")
    if len(pw) < 8 :
        raise WeakPasswordError(len(pw))
    print("Password accepted")
except WeakPasswordError as e :
    print("Error! "+str(e))
        
        

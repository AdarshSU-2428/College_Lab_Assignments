class MinBalanceError(Exception):
    def __init__(self, current):
        self.current = current
    def __str__(self):
        return "Action denied. Current balance " + str(self.current) + " must stay above Rs.1000."

class BankAccount:
    def __init__(self, balance):
        self.balance = balance
    def withdraw(self, amt):
        if self.balance - amt < 1000:
            raise MinBalanceError(self.balance)
        self.balance -= amt
        print("Success. New balance: " + str(self.balance))

acc = BankAccount(1500)
try:
    acc.withdraw(600)
except MinBalanceError as e:
    print("Error! " + str(e))

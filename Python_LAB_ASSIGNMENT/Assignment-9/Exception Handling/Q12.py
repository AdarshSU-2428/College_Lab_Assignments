class WithdrawalError(Exception):
    def __init__(self, msg):
        self.msg = msg
    def __str__(self):
        return self.msg

balance = 50000
try:
    amt = float(input("Enter amount: "))
    if amt > balance:
        raise WithdrawalError("Insufficient funds. Balance is " + str(balance))
    if amt > 20000:
        raise WithdrawalError("Exceeds daily limit of Rs.20000.")
    print("Withdrawal successful.")
except WithdrawalError as e:
    print("Error! " + str(e))

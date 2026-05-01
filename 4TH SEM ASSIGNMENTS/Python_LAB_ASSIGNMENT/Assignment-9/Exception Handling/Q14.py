class OutOfStockError(Exception):
    def __init__(self, requested, available):
        self.requested = requested
        self.available = available
    def __str__(self):
        return "Cannot buy " + str(self.requested) + ". Only " + str(self.available) + " left in stock."

stock = 5
try:
    order = int(input("Enter quantity: "))
    if order > stock:
        raise OutOfStockError(order, stock)
    stock -= order
    print("Order placed. Remaining: " + str(stock))
except OutOfStockError as e:
    print("Error! " + str(e))

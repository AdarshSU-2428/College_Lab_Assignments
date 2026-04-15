class LowSalaryError(Exception):
    def __init__(self, salary):
        self.salary = salary
    def __str__(self):
        return "Salary Rs." + str(self.salary) + " is below the minimum limit of Rs.15000."

try:
    sal = float(input("Enter salary: "))
    if sal < 15000:
        raise LowSalaryError(sal)
    print("Salary accepted.")
except LowSalaryError as e:
    print("Error! " + str(e))

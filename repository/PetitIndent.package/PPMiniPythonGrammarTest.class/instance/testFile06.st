test-grammar
testFile06
	code := '
class BankAccount(object):
    def __init__(self, initial_balance=0):
        self.balance = initial_balance
    def deposit(self, amount):
        self.balance += amount
    def withdraw(self, amount):
        self.balance -= amount
    def overdrawn(self):
        return self.balance < 0
my_account = BankAccount(15)
my_account.withdraw(5)
print my_account.balance
'.
	self parse: code.
	
	self assert: (result joinUsing: String cr) = 
'class:
BankAccount
fundef:
__init__
:fundef
fundef:
deposit
:fundef
fundef:
withdraw
:fundef
fundef:
overdrawn
:fundef
:class
print'

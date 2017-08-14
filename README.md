# ATM challenge
Our client is a financial institution that wants to allow its customers to withdraw funds from their accounts using an Automatic Teller Machine (ATM). They have turned to us for a prototype of a system with limited functionality. Our job is to write a simple Ruby program that can be run in the Interactive Ruby Shell (IRB).

# Scope/Objectives

The following objectives must be met:

- An ATM machine can hold up to $1000
- Withdrawal can be cleared only if
- The ATM holds enough funds
- The amount is divisible by 5
- the person attempting the withdrawal provides a valid ATM card
- Valid pin and expire date
- Card status must be active (Not report stolen or lost)
- the person attempting the withdrawal has sufficient funds on his account
- There are only $5, $10 and $20 bills in the ATM. Withdrawals for amounts not divisible by 5 must be rejected
- Upon a successful withdrawal the system should return a receipt with information about the date, amount and bills   that was dispatched. (The receipt should be presented in the form of a Hash.

## How to use:
Open `irb` and run the following commands:
```
2.3.3 :001 > load 'lib/atm.rb'
 => true
2.3.3 :002 > load 'lib/account.rb'
 => true
2.3.3 :003 > load 'lib/person.rb'
 => true  
 ```

 ``` irb
 # Create Person
 2.3.3 :004 > person = Person.new(name:'Jennifer')
 => #<Person:0x007fe2f10b2620 @name="Jennifer", @cash=0, @account=nil>
 #Create account
2.3.3 :005 > person.create_account
 => #<Account:0x007fe2f09416e8 @pin_code=3415, @balance=0, @exp_date="02/22", @account_status=:active, @owner=#<Person:0x007fe2f10b2620 @name="Jennifer", @cash=0, @account=#<Account:0x007fe2f09416e8 ...>>>
#Create an ATM
2.3.3 :006 > atm = Atm.new
 => #<Atm:0x007fe2f09a0da0 @funds=1000>
 #Deposit funds
2.3.3 :007 > person.deposit 100
 => 100
 ```
 ``` irb
 #Perform Withdraw
2.3.3 :009 > person.withdraw(amount:50, account:person.account, pin:person.account.pin_code, atm:atm)
 => -50
 2.3.3 :010 > person.deposit(100)
 => 150
 #Another test
 2.3.3 :008 > person.withdraw(amount:100, account:person.account, pin: person.account.pin_code, atm:atm)
 => 0
 2.3.3 :012 > person.cash
 => 0
2.3.3 :009 > atm.funds
 => 900

  ```

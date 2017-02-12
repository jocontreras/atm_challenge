# ATM challenge
ATM-challenge is the week1 challenge of the Craft Academy Bootcamp. This is a simmulation of ATM-machine that allow its customers to 
deposit and withdraw funds from their account. Ruby is the programming used and RSpec for testing.

###How to use:
Open `irb` and run the following commands:
``` irb
2.3.3 :001 > load 'lib/atm.rb'
 => true 
2.3.3 :002 > load 'lib/account.rb'
 => true 
2.3.3 :003 > load 'lib/person.rb'
/Users/Osama/Projects/atm/lib/account.rb:9: warning: already initialized constant Account::STANDARD_VALIDITY_YEARS
lib/account.rb:9: warning: previous definition of STANDARD_VALIDITY_YEARS was here   *(due to changed of the version of ruby)*
 => true  
 ```
 ``` irb
 #Create Person
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
#Withdraw
 ```
 
 

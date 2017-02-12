require './lib/atm.rb'
require './lib/account.rb'


class Person

  attr_accessor :name, :cash, :account

  def initialize(attrs = {})
    @name = set_name(attrs[:name])
    @cash = 0
    @account = nil
  end

  def create_account
     @account = Account.new(owner: self)
  end

  def deposit(amount)
      @account.nil? ? missing_account : deposit_funds(amount)
  end

  def withdraw(args = {})
    @account.nil? ? missing_account : withdraw_funds(args)
  end

  private

  def set_name(name)
      name.nil? ? missing_name : name
  end

  def missing_name
   raise ArgumentError,'A name is required'
  end

  def set_account(obj_account)
    return obj_account unless nil?
  end

 def missing_account
    raise RuntimeError, 'No existing account'
  end

  def deposit_funds(amount)
    @cash -= amount
    @account.balance += amount
  end

  def withdraw_funds(args)
    args[:atm].nil? ? missing_atm : atm = args[:atm]
    account = @account
    amount = args[:amount]
    pin = args[:pin]
    response = atm.withdraw(amount, pin, account)
    response[:status] ? increase_cash(response) : response
  end

  def setting_atm(args)
     args[:atm].nil? ? missing_atm : args[:atm]
   end

  def missing_atm
    raise RuntimeError, 'An ATM is required'
  end

   def increase_cash(response)
     @cash += response[:amount]
   end

end

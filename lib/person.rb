require './lib/atm.rb'
require './lib/account.rb'


class Person

  attr_accessor :name, :cash, :account

  def initialize(attrs = {})
    @name = set_name(attrs[:name])
    @cash = 0
    @account =set_account(attrs[:account])
  end


def set_name(obj_name)
    obj_name.nil? ? miss_name : @name = obj_name
end

def miss_name
   raise 'A name is required'
 end

 def set_account(obj_account)
   return obj_account unless nil?
 end

 def create_account
    @account = Account.new(owner: self)
end

def deposit(amount)
    @account.nil? ? has_no_account : deposit_funds(amount)
  end

  def deposit_funds(amount)
    @cash -= amount
    @account.balance += amount
  end

  def has_no_account
    raise RuntimeError, 'No existing account'
  end









end

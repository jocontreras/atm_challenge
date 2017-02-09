class Person

  attr_accessor :name, :cash, :account

  def initialize(attrs = {})
    @name = set_name(attrs[:name])
    @cash = 0
    @account =set_account(attrs[:account])
  end

private


def set_name(obj)
    obj.nil? ? miss_name : @name = obj
end

def miss_name
   raise 'A name is required'
 end

 def set_account(obj)
   return obj unless nil?
 end





end

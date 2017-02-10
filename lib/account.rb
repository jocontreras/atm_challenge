class Account
  attr_accessor :pin_code, :balance, :exp_date, :account_status, :owner


  STANDARD_VALIDITY_YEARS = 5

  def initialize(attrs = {})
    @pin_code = rand(1000..9999)
    @balance = 0
    @exp_date = set_exp_date
    @account_status = :active
    @owner = set_owner(attrs[:owner])
  end

  def deactivate
    @account_status = :deactivated
  end

  private

  def set_exp_date
    Date.today.next_year(STANDARD_VALIDITY_YEARS).strftime("%m/%y")
  end

  def set_owner(obj)
    obj.nil? ? missing_owner : @owner = obj
  end

  def missing_owner
    raise 'An Account owner is required'
  end

end

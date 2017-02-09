class Account

  attr_accessor :pin_code, :balance, :exp_date, :account_status

  STANDARD_VALIDITY_YEARS = 5

  def initialize
    @exp_date = set_exp_date
    @pin_code = generate_pin
    @balance = 0
    @account_status = :active
  end

  private

  def generate_pin
    rand(1000..9999)
  end

  def set_exp_date
    Date.today.next_year(STANDARD_VALIDITY_YEARS).strftime('%m%y')
  end

  def self.deactivate(account)
    account.account_status = :deactivated
  end
end

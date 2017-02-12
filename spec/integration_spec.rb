require './lib/person'

describe 'a person uses account to use the atm' do
  it 'allows a withdrawal by a person' do
    jenny = Person.new(name: "Jennifer")
    jenny.create_account
    atm = Atm.new
    jenny.deposit(100)
    jenny.withdraw(amount:100, account:jenny.account, pin:jenny.account.pin_code, atm:atm)
       expect(atm.funds).to eq 900
  end
end

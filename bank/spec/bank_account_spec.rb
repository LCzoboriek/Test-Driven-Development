require 'bank_account.rb'

describe 'BankAccount' do
  it 'can create a bank account' do
    bank_account = BankAccount.new
    expect(bank_account).to be_instance_of(BankAccount)
  end

  it 'can respond to deposit with 1 arg' do
    bank_account = BankAccount.new
    expect(bank_account).to respond_to(:deposit).with(1).argument
  end

  it 'can withdraw money' do
    bank_account = BankAccount.new
    expect(bank_account).to respond_to(:withdraw).with(1).argument
  end

  it 'can view balance' do
    bank_account = BankAccount.new
    expect(bank_account).to respond_to(:balance).with(1).argument
  end
end

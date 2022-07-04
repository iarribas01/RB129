class BankAccount
  attr_reader :name

  def initialize(name, pin)
    @name = name
    @pin = pin
  end

  private attr_reader :pin
end

isabels_account = BankAccount.new("Isabel", 1234)
puts isabels_account.name
puts isabels_account.pin
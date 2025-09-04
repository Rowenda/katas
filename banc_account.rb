class BankAccount
  attr_reader :balance

  def initialize(initial_balance = 0)
    @balance = initial_balance
  end

  def deposit(amount)
    @balance += amount
  end

  def withdraw(amount)
    @balance >= amount ?  @balance -= amount : puts "solde insuffisant"
  end
end

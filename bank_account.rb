# class BankAccount
#   attr_reader :balance

#   def initialize(initial_balance = 0)
#     @balance = initial_balance
#   end

#   def deposit(amount)
#     @balance += amount
#   end

#   def withdraw(amount)
#     @balance >= amount ?  @balance -= amount : puts "solde insuffisant"
#   end
# end

# 🏦 Exercice 1 : BankAccount revisité
# Créer une classe BankAccount qui :
# possède un solde initial (par défaut à 0),
# permet de deposit(amount) et withdraw(amount),
# empêche de retirer si le solde est insuffisant (lever une exception InsufficientFundsError),
# garde l’historique des transactions (date, type, montant, solde après opération).
# Bonus :
# méthode to_csv(filename) qui exporte l’historique dans un fichier CSV.
# 👉 Objectif : POO, exceptions, manipulation de Time, export de données.
require "date"
require "csv"
class BankAccount
  attr_reader :balance
  class InsufficientFundsError < StandardError
  end

  def initialize
    @balance = 0
    @transactions = []
  end

  def to_csv(csv_file_path)
    CSV.open(csv_file_path, 'wb') do |csv|
      @transactions.each { |transaction| csv << [transaction.balance, transaction.amount, transaction.date, transaction.type] }
    end
  end

  def deposit(amount)
    add_transaction(amount)
  end

  def withdraw(amount)
    if @balance >= amount
      add_transaction(-amount)
    else
      raise InsufficientFundsError, "No such found on your Bank account"
    end
  end

  def transactions_history
    @transactions
  end

  def add_transaction(amount)
    @balance += amount
    @transactions << {
    amount: amount,
    balance: @balance,
    date: Date.today,
    type: amount > 0 ? "deposit" : "withdraw"
  }
  end
end

# 🎲 Exercice 4 : Dice roller

# Crée une classe DiceSet qui peut lancer un nombre arbitraire de dés à 6 faces :
# 👉 Les dés doivent donner des résultats aléatoires entre 1 et 6.
# Bonus : ajouter un paramètre optionnel pour changer le nombre de faces.

class DiceSet
  attr_reader :values

  def initialize
    @values = []
  end

  def roll(int)
    @values = [] unless @values.empty?
    int.times { @values << rand(1..6)}
  end

  def play
    self.roll(rand(1..10))
    @values
  end
end

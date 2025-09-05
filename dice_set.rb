# 🎲 Exercice 4 : Dice roller

# Crée une classe DiceSet qui peut lancer un nombre arbitraire de dés à 6 faces :
# 👉 Les dés doivent donner des résultats aléatoires entre 1 et 6.
# Bonus : ajouter un paramètre optionnel pour changer le nombre de faces.

# tu peux choisir le nombre de dés ET le nombre de faces au moment du roll,
# une méthode sum retourne la somme des dés,
# une méthode stats retourne un hash des résultats

class DiceSet
  attr_reader :values

  def initialize
    @values = []
  end

  def roll(dice, faces = 6)
    @values = [] unless @values.empty?
    dice.times { @values << rand(1..faces)}
  end

  def play
    self.roll(rand(1..10))
    @values
  end

  def sum
    @values.sum
  end

  def stats
    @values.tally
  end
end

# 🧮 Exercice 1 : Implémenter un Stack (pile)

# Écris une classe Stack avec :
# push → ajoute un élément,
# pop → retire le dernier élément,
# peek → retourne le dernier élément sans le retirer,
# empty? → teste si la pile est vide.
# 👉 Tu dois stocker les éléments dans un Array interne.
# Bonus : lever une exception si on fait pop sur une pile vide.

class Stack
  attr_reader :stack
  def initialize
    @stack = []
  end

  def push(elem)
    @stack << elem
  end

  def pop
    @stack.delete_at(-1) unless empty?()
  end

  def peek
    @stack[-1]
  end

  def empty?
    @stack == []
  end
end

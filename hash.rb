# 📊 Exercice 2 : Histogramme de mots

# Écris une méthode qui prend un texte (string)
# et retourne un hash des mots et de leur fréquence, triés par ordre décroissant.
# 👉 Objectif : manipuler Hash, tally, sort_by.

def word_frequency(string)
  word_array = string.downcase.split
  word_array.tally.sort_by{|k,v| v }.reverse.to_h
end

# ⏳ Exercice 3 : Fibonacci avec memoization

# Écris une méthode fibonacci(n) qui calcule le n-ième nombre de Fibonacci
# avec une version naïve puis une version optimisée avec memoization (éviter les recalculs).
# 👉 Objectif : récursivité, performance, cache avec Hash.

def fibonacci(n, memo = {})
  return n if n < 2
  memo[n] ||= fibonacci(n-1, memo) + fibonacci(n-2, memo)
end

# Inverser les clés et valeurs d'un hash
def invert_hash(hash)
  new_hash = {}
  hash.each { |k,v| new_hash[v] = k }
  new_hash
end

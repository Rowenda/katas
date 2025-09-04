# Manipulation de chaînes
# Écrire une fonction qui inverse une chaîne sans utiliser .reverse.
# Objectif : boucles, manipulation de Array.

def reverse(string)
  newstring= ""
  letterarray = string.downcase.split(//)
  letterarray.each do |letter|
    newstring = letter + newstring
  end
  newstring
end


# 🔡 Exercice : Compteur de voyelles
# Écrire une méthode qui prend une chaîne et retourne le nombre de voyelles (a, e, i, o, u, y).
# Tu devras transformer la chaîne en array et utiliser each (ou count) pour parcourir.

def count_vowels(string)
  letterarray = string.downcase.split(//)
  letterarray.count do |letter|
    letter == "a" || letter == "e" || letter == "i" || letter == "o" || letter == "u" || letter == "y"
  end
end

#🔀 Exercice : Détecter les anagrammes
# Tu dois manipuler les mots comme des tableaux (split, sort, etc.).
# Ne pas utiliser de gem externe, uniquement la logique Ruby de base.
# L’ordre n’a pas d’importance, seule la composition des lettres compte.

def anagram?(word1, word2)
  letters1 = word1.downcase.chars
  letters2 = word2.downcase.chars
  letters1.tally == letters2.tally
end

# 🔁 Exercice 4 : Détecter un palindrome
# Manipuler la chaîne en array (pas d’appel direct à .reverse sur la string).
# Bien gérer les majuscules/minuscules et les espaces.

def palindrome?(string)
  letters = string.downcase.gsub(" ", "").chars
  letters == letters.reverse
end

# Écrire une méthode qui compte les occurrences de chaque mot dans une phrase
def word_count(phrase)
  phrase.split.tally
end

# Retourner seulement les nombres pairs d'un array
def even_numbers(numbers)
  numbers.select { |number| number.even? }
end

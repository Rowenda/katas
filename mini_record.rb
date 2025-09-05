# 🧠 Exercice 3 : Mini ORM en Ruby pur (niveau ++ 🚀)

# Écris une classe MiniRecord qui simule un enregistrement avec :
# un hash interne qui contient les attributs,
# méthode set(attr, value) pour ajouter ou modifier un champ,
# méthode get(attr) pour récupérer un champ,
# méthode to_h qui retourne le hash des attributs.
# Bonus :
# définir des accesseurs dynamiques : si tu fais user.name = "Alice", ça stocke dans le hash,
# et user.name le retourne. (astuce : method_missing + define_singleton_method).
# 👉 Objectif : métaprogrammation Ruby.

class MiniRecord
  attr_reader :records
  def initialize
    @records = {}
  end

  def set(attr, value)
    @records[attr] = value
  end

  def get(attr)
    @records[attr]
  end

  def to_h
    attributes = []
    @records.each_key { |attr| attributes << attr }
    attributes
  end

  #method missing allow to modify the response in case the method doesn't exist.
  def method_missing(method, value)
    name = method.to_s
    # If the method name set a value (create a new method)
    if name.end_with?("=")
      key = name.chomp("=").to_sym
      set(key, value)
      # Create the new method with define_singleton_method
      define_singleton_method(key) do
        get(key)
      end
      #If the method doesn't exist and don't be create before, we call the normal path of method_missing
    else
      super
    end
  end
end

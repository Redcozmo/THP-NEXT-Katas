# Problème 3
# Écrire une fonction qui calcule les 100 premiers nombres de Fibonacci. Fibonacci commence avec 0 et 1 et chaque nombre suivant est calculé comme étant la somme des deux précédents.
# Le début de la liste sera donc: [0, 1, 1, 2, 3, 5, 8, 13, 21, 34, …].

def fibonacci(num)
  list = []
  cpt = 0
  while cpt < num
    if cpt == 0
      list.push(0)
    elsif cpt == 1 || cpt == 2
      list.push(1)
    else
      list.push(list[-1]+list[-2])
    end
    cpt += 1
  end
  return list
end

num = 20
puts "Liste des #{num} premiers nombres de la suite de Fibonacci : "
print fibonacci(num)

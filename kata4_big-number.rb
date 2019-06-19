# Problème 4
# Écrire une fonction qui prend en argument une liste de nombres non-négatifs
# puis les arrange de façon a faire le plus grand nombre possible.
# Par exemple: big([50, 2, 1, 9]) doit donner: 95021
# Pro-tip: [3, 34, 302, 50, 31] est un meilleur test que celui ci-dessus.

def big_with_permutation(array)
  array.permutation(array.length).to_a.map {|elem| elem.join.to_i }.max
end

list = [3, 34, 302, 50, 31]
print "Le plus grand nombre constiuté de la liste #{list} est : "
puts big_with_permutation(list)

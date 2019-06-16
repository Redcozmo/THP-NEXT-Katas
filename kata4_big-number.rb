# Problème 4
# Écrire une fonction qui prend en argument une liste de nombres non-négatifs
# puis les arrange de façon a faire le plus grand nombre possible.
# Par exemple: big([50, 2, 1, 9]) doit donner: 95021
# Pro-tip: [3, 34, 302, 50, 31] est un meilleur test que celui ci-dessus.

def big(array)
  # boucle
  #   prendre tous les nombres/chiffres avec le plus grand chiffre au début
  #   comparer le deuxième chiffre de ces nombres et prendre celui qui a le plus grand deuxième
  #   etc si nombre a plus de chiffre
  # fin de boucle

  # array.sort_by{|num| num.to_s }.reverse.join
  # h = array.sort_by{|num| num.to_s }.reverse.group_by { |num| num.to_s[0] }
  # h.each do |key, value|
  #   if value.is_a? Array
  #     if value.last.length == 1
  #       value[0..-2]
  #     end
  #   end
  # end
end

def big_with_permutation(array)
  array.permutation(array.length).to_a.map {|elem| elem.join.to_i }.max
end

list = [3, 34, 302, 50, 31]
print "Le plus grand nombre constiuté de la liste #{list} est : "
puts big_with_permutation(list)

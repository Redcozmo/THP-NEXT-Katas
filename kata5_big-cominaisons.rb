# Problème 5
# Écrire une fonction qui affiche toutes les possibilités de faire 100 avec les
# nombres 1 2 3 4 5 6 7 8 9 dans cet ordre en mettant entre eux seulement
# des -, + ou en collant les nombres.
# Par exemple: 1 + 2 + 34 – 5 + 67 – 8 + 9 (= 100)

# SOLUTION ?
# trouver toutes les combinaisons de chiffres / nombres possibles
# trouver toutes les opérations possibles à partir des combinaisons
# faire le calcul de chacune (6560)
# trouver lesquelles donnent le résultat demandé

# require kata2_altern-list

# fonction qui renvoie toutes les combinaisons possibles
def combinaisons(array, cpt = 0, solution = [], solution_previus = []) # array = [7,8,9]
  if cpt == 0
    solution_previus = [ array[-2..-1][0] + array[-2..-1][1] ] # => ["89"]
    solution_previus << array[-2..-1][0] + ',' + array[-2..-1][1] # => ["89", "8,9"]
  elsif cpt > array.length - 2
    solution.map! { |e| e.split(',').map { |e| e.to_i } }
    return solution
  else # => ["789", "78,9", "7,89", "7,8,9"]
    num = array[-2-cpt]
    solution = []
    solution_previus.length.times do |i|
      solution << num + solution_previus[i]
      solution << num + ',' + solution_previus[i]
    end
    solution_previus = solution
  end
  cpt += 1
  combinaisons(array, cpt, solution, solution_previus)
end

# fonction qui renvoie toutes les combinaisons possibles de signes pour une taille d'array donnée
def operators_combinaisons(array, cpt = 0, operators = [], base = [])
  if cpt == 0
    base = ['+', '-'] # => ["+", "-"]
    if array.length == 2 then return [['+'], ['-']] end
  elsif cpt > array.length - 2
    operators.map! { |e| e.split(',') }
    return operators
  else
    operators = []
    base.length.times do |i|
      operators << '+' + ',' + base[i]
      operators << '-' + ',' + base[i]
    end
    base = operators
  end
  cpt += 1
  operators_combinaisons(array, cpt, operators, base)
end

# fonction qui renvoie toutes les opérations possibles pour une combinaison aisni que les résultats
def operations_and_results_for_one_combinaison(array)
  operations = []
  operators_combinaisons = operators_combinaisons(array)
  operators_combinaisons.each do |operator|
    operations << array.zip(operator).flatten.compact.join
  end
  results = operations.map { |operation| eval operation }
  return operations, results
end

# fonction qui calcule toutes les opérations possibles pour toutes les combinaisons ainsi que les résultats
def all_operations_and_results(array)
  all_operations = []
  all_results = []
  i = 0
  array.each do |combinaison|
    operations, results = operations_and_results_for_one_combinaison(combinaison)
    all_operations << operations
    all_results << results
    i += 1
  end
  return all_operations.flatten(1).zip(all_results.flatten(1)).to_h
end

# fonction qui recherche et affiche les opérations qui donnent num
def search_and_display_result(hash_results, num)
  solution = []
  hash_results.map {|key, value| if value == num then solution << key end }
  puts "Il y a #{solution.count} solutions pour obtenir #{num}."
  puts "Ces solutions sont les suivantes : "
  solution.each { |e| print e + " = #{num}"; puts "" }
end

def perform

  numbers = ['1','2','3','4','5','6','7','8','9']
  print "Liste de nombres = "
  print numbers
  combinaisons = combinaisons(numbers)
  puts ""
  puts "Il y a #{combinaisons.count} combinaisons de chiffres/nombres différentes !"

  hash_results = all_operations_and_results(combinaisons)
  puts "Il y a #{hash_results.count} opérations différentes !"

  search_and_display_result(hash_results, 100)
end

perform

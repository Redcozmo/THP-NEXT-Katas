# Problème 2
# Écrire une fonction qui combine deux listes en une seule en alternant les éléments.
# Par exemple, combine([:a, :b, :c], [1, 2, 3]) doit renvoyer [:a, 1, :b, 2, :c, 3].

def altern_list(a, b)
  c = []
  2*a.length.times do |i| c.push(a[i]).push(b[i]) end
  return c.compact
end

def perform_altern_list
  a = [:a, :b, :c]
  b = [1, 2, 3]
  altern_list(a, b)
end

print perform_altern_list()

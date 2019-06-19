# Problème 1
# Écrire 3 fonctions qui calculent la somme des nombres dans une liste
# utilisant 3 façons différentes (while, each, recursion en ruby)

# while
def sum_with_while(array)
  i = 0
  sum = 0
  while i < array.length
    sum += array[i]
    i += 1
  end
  return sum
end

# each
def sum_with_each(array)
  sum = 0
  array.each { |num| sum += num }
  return sum
end

# recursion
def sum_with_recursion(array, sum=0)
  return sum if array.length == 0
  sum += array[0]
  array.shift
  return sum_with_recursion(array, sum)
end

# execution
def perform_sums
  short_array = [1,2,3,4]
  large_array = Array.new(10000, 5)

  puts "With short arrays : "
  puts "*" * 20

  start_time = Time.now
  result = sum_with_while(short_array)
  end_time = Time.now
  puts "Sum with while = #{result} in #{end_time - start_time}"

  start_time = Time.now
  result = sum_with_each(short_array)
  end_time = Time.now
  puts "Sum with each = #{result} in #{end_time - start_time}"

  start_time = Time.now
  result = sum_with_recursion(short_array)
  end_time = Time.now
  puts "Sum with recursion = #{result} in #{end_time - start_time}"

  puts "*" * 20
  puts "With large arrays : "
  puts "*" * 20

  start_time = Time.now
  result = sum_with_while(large_array)
  end_time = Time.now
  puts "Sum with while = #{result} in #{end_time - start_time}"

  start_time = Time.now
  result = sum_with_each(large_array)
  end_time = Time.now
  puts "Sum with each = #{result} in #{end_time - start_time}"

  start_time = Time.now
  result = sum_with_recursion(large_array)
  end_time = Time.now
  puts "Sum with recursion = #{result} in #{end_time - start_time}"
end

puts perform_sums()

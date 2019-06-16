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

# speed
def speed_test(function)
  start_time = Time.now
  function
  end_time = Time.now
  return end_time - start_time
end

# execution
def perform_sums
  puts "Sum with while = #{sum_with_while([1,2,3,4])}"
  puts "Sum with each = #{sum_with_each([1,2,3,4])}"
  puts "Sum with recursion = #{sum_with_recursion([1,2,3,4])}"

  puts "Duration with large array"
  large_array = Array.new(10000, 1)
  puts "Sum with while = #{sum_with_while(large_array)}"
  puts "Sum with each = #{sum_with_each(large_array)}"
  puts "Sum with recursion = #{sum_with_recursion(large_array)}"
  speed_test_while = speed_test(sum_with_while(large_array))
  speed_test_each = speed_test(sum_with_each(large_array))
  speed_test_recursion = speed_test(sum_with_recursion(large_array))
  puts "#{speed_test_while} seconds with sum_with_while"
  puts "#{speed_test_each} seconds with sum_with_each"
  puts "#{speed_test_recursion} seconds with sum_with_recursion"
end

puts perform_sums()

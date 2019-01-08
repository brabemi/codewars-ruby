def binary_array_to_number(arr)
  arr.each_with_index.map { |x, i| x * (2**(arr.length - 1 - i)) }.sum
end

p binary_array_to_number([0, 0, 0, 1]) == 1
p binary_array_to_number([0, 0, 1, 0]) == 2
p binary_array_to_number([1, 1, 1, 1]) == 15
p binary_array_to_number([0, 1, 1, 0]) == 6

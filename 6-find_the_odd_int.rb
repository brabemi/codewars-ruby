# https://www.codewars.com/kata/find-the-odd-int/train/ruby

def find_it(seq)
  cntr = Hash.new(0)
  seq.each { |e| cntr[e] += 1 }
  cntr.find { |_, v| v.odd? } [0]
end

p find_it([20, 1, -1, 2, -2, 3, 3, 5, 5, 1, 2, 4, 20, 4, -1, -2, 5]) == 5
p find_it([1, 1, 2, -2, 5, 2, 4, 4, -1, -2, 5]) == -1
p find_it([20, 1, 1, 2, 2, 3, 3, 5, 5, 4, 20, 4, 5]) == 5
p find_it([10]) == 10
p find_it([1, 1, 1, 1, 1, 1, 10, 1, 1, 1, 1]) == 10

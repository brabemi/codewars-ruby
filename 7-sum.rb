# https://www.codewars.com/kata/55f2b110f61eb01779000053/train/ruby

def get_sum(a, b)
  min_max = [a, b].minmax
  (min_max[0]..min_max[1]).sum
end

p get_sum(0, 1) == 1
p get_sum(0, -1) == -1
p get_sum(1, 2) == 3
p get_sum(5, -1) == 14

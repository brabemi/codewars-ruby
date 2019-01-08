# https://www.codewars.com/kata/perimeter-of-squares-in-a-rectangle

require 'matrix'

def perimeter(n)
  4 * ((Matrix[[1, 1], [1, 0]]**(n + 2))[0, 0] - 1)
end

p perimeter(5), 80
p perimeter(7), 216
p perimeter(20), 114_624
p perimeter(30), 14_098_308
p perimeter(100), 6_002_082_144_827_584_333_104

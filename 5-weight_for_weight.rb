# https://www.codewars.com/kata/weight-for-weight/train/ruby

def string_weight(strng)
  [strng.each_char.map(&:to_i).reduce(:+), strng]
end

def order_weight(strng)
  strng.split.sort_by! { |e| string_weight(e) }.join(' ')
end

p order_weight('103 123 4444 99 2000'), '2000 103 123 4444 99'
p order_weight('2000 10003 1234000 44444444 9999 11 11 22 123'), '11 11 2000 10003 22 123 1234000 44444444 9999'

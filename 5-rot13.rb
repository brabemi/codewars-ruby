# https://www.codewars.com/kata/rot13-1/train/ruby

ROT13_LOW = ('a'..'z').to_a.rotate(13).freeze
ROT13_UP = ('A'..'Z').to_a.rotate(13).freeze

A_LOW = 'a'.ord
A_UP = 'A'.ord

def rot13_c(chr)
  return ROT13_UP[chr.ord - A_UP] if chr.between?('A', 'Z')
  return ROT13_LOW[chr.ord - A_LOW] if chr.between?('a', 'z')

  chr
end

def rot13(string)
  string.each_char.map { |e| rot13_c(e) }.join
end

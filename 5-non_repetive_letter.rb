# https://www.codewars.com/kata/first-non-repeating-character/train/ruby

def first_non_repeating_letter(s)
  cntr = Hash.new(0)
  s.chars.each { |e| cntr[e.downcase] += 1 }
  s.chars.each { |e| return e if cntr[e.downcase] == 1 }
  ''
end

p first_non_repeating_letter('a') == 'a'
p first_non_repeating_letter('streSS') == 't'
p first_non_repeating_letter('moonmen') == 'e'
p first_non_repeating_letter('') == ''

# https://www.codewars.com/kata/create-phone-number/train/ruby

def createPhoneNumber(numbers)
  format('(%d%d%d) %d%d%d-%d%d%d%d', *numbers)
end

p createPhoneNumber([1, 2, 3, 4, 5, 6, 7, 8, 9, 0]) == '(123) 456-7890'

# https://www.codewars.com/kata/5839edaa6754d6fec10000a2/train/ruby

require 'set'

def find_missing_letter(arr)
  (Set.new(arr[0]..arr[-1]) - arr).to_a[0]
end

p find_missing_letter(['a', 'b', 'c', 'd', 'f']) == 'e'
p find_missing_letter(['O', 'Q', 'R', 'S']) == 'P'
p find_missing_letter(['b', 'd']) == 'c'
p find_missing_letter(['a', 'b', 'd']) == 'c'
p find_missing_letter(['b', 'd', 'e']) == 'c'

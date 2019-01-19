# https://www.codewars.com/kata/pyramid-slide-down/train/ruby

def longest_slide_down(pyramid)
  # your solution here
  stop = pyramid.length - 1
  (0...stop).reverse_each do |level|
    pyramid[level].each_with_index do |_, index|
      pyramid[level][index] += pyramid[level + 1][index..(index + 1)].max
    end
  end
  pyramid[0][0]
end

# p longest_slide_down([
#                        [3],
#                        [7, 4],
#                        [2, 4, 6],
#                        [8, 5, 9, 3]
#                      ])

# https://www.codewars.com/kata/sudoku-solution-validator/train/ruby

def valid_seq(seq)
  seq.sort == [1, 2, 3, 4, 5, 6, 7, 8, 9]
end

def valid_rows(board)
  9.times do |i|
    return false unless valid_seq(board[i])
  end
  true
end

def valid_cols(board)
  9.times do |i|
    return false unless valid_seq(board.map { |row| row[i] })
  end
  true
end

def valid_squares(board)
  9.times do |i|
    x, y = i.divmod(3).map { |e| 3 * e }
    pairs = (x..(x + 2)).to_a.product((y..(y + 2)).to_a)
    return false unless valid_seq(pairs.map { |row, col| board[row][col] })
  end
  true
end

def validSolution(board)
  return false unless valid_rows(board)
  return false unless valid_cols(board)
  return false unless valid_squares(board)

  true
end

p validSolution([
                  [5, 3, 4, 6, 7, 8, 9, 1, 2],
                  [6, 7, 2, 1, 9, 5, 3, 4, 8],
                  [1, 9, 8, 3, 4, 2, 5, 6, 7],
                  [8, 5, 9, 7, 6, 1, 4, 2, 3],
                  [4, 2, 6, 8, 5, 3, 7, 9, 1],
                  [7, 1, 3, 9, 2, 4, 8, 5, 6],
                  [9, 6, 1, 5, 3, 7, 2, 8, 4],
                  [2, 8, 7, 4, 1, 9, 6, 3, 5],
                  [3, 4, 5, 2, 8, 6, 1, 7, 9]
                ]), true
p validSolution([
                  [5, 3, 4, 6, 7, 8, 9, 1, 2],
                  [6, 7, 2, 1, 9, 0, 3, 4, 9],
                  [1, 0, 0, 3, 4, 2, 5, 6, 0],
                  [8, 5, 9, 7, 6, 1, 0, 2, 0],
                  [4, 2, 6, 8, 5, 3, 7, 9, 1],
                  [7, 1, 3, 9, 2, 4, 8, 5, 6],
                  [9, 0, 1, 5, 3, 7, 2, 1, 4],
                  [2, 8, 7, 4, 1, 9, 6, 3, 5],
                  [3, 0, 0, 4, 8, 1, 1, 7, 9]
                ]), false

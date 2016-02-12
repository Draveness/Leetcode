# @param {Character[][]} board
# @return {Boolean}
def is_valid_sudoku(board)
    row = board.map { |array| array.join }
    column = board.transpose.map { |array| array.join }
    square = board.map { |array| array.join.scan(/.{3}/) }.transpose.flatten.each_slice(3).map { |slice| slice.join }
    all = row + column + square
    all.reduce(true) do |result, string|
        string.gsub!('.', '')
        return false if string.length != string.split("").uniq.length
        result = true
    end
end


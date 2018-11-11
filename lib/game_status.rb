# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
    [0,1,2], # row wins
    [3,4,5],
    [6,7,8],
    [0,3,6], # column wins
    [1,4,7],
    [2,5,8],
    [0,4,8], # diagnoal wins
    [2,4,6]
  ]
  
def won?(board) # returns winning combination
  WIN_COMBINATIONS.detect do |combo|
    combo.all? { |pos| board[pos] == "X"} || combo.all? { |pos| board[pos] == "O"}
  end
end

def full?(board)
  board.all? do |pos|
    pos == "X" || pos == "O"
  end
end

def draw?(board)
  full?(board) && !won?(board)
end

def over?(board)
  won?(board) || draw?(board) || full?(board)
end

def winner(board)
  token = " "
  won?(board).each do |pos|
    if board[pos] == "X"
      token == "X"
    elsif board[pos] == "O"
      token == "O"
    else
      token == nil
    end
  end
end


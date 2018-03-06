# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2], # Top row
  [3,4,5],  # Middle row
  [6,7,8],
  [0,3,6],
  [1,4,7],
  [2,5,8],
  [0,4,8],
  [2,4,6]
]



def won?(board)
  if board.any?{|i| i == "X"} || board.any?{|i| i == "0"}
    WIN_COMBINATIONS.each do |win_combination|
      position_1 = board[win_combination[0]] # load the value of the board at win_index_1
      position_2 = board[win_combination[1]] # load the value of the board at win_index_2
      position_3 = board[win_combination[2]] # load the value of the board at win_index_3

      if position_1 == position_2 && position_2 == position_3
        return win_combination # return the win_combination indexes that won.
      end
    end
    false
  end
end

def full?(board)
  board.all?{|i| i == "X" || i == "O"}
end

def draw?(board)
  full?(board) && !won?(board)
end

def over?(board)
  won?(board) || full?(board)
end

def winner(board)
  if winning_combo = won?(board)
    board[winning_combo.first]
  end
end

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

def won?(board = ["X", " ", " ", " ", " ", " ", " ", " ", " "])


  #if board.any?{|i| i != " "}
    puts "Start"
    WIN_COMBINATIONS.each do |i|
      puts "combo #{i}"
      a = i[0]
      b = i[1]
      c = i[2]
      puts "board #{board}"
      puts "board0 #{board[0]}"
      puts "a b c #{a} #{b} #{c}"
      puts "board abc #{board[a]} #{board[b]} #{board[c]}"
      puts "board i012 #{board[i[0]]} #{board[i[1]]} #{board[i[2]]}"
      if board[i[0]] != " " && board[i[1]] != " " && board[i[2]] != " "
        winner = i
        puts "winner: #{board}"
        break
      end
    end
  #end

  WIN_COMBINATIONS.each do |win_combination|
  # win_combination is a 3 element array of indexes that compose a win, [0,1,2]
  # grab each index from the win_combination that composes a win.
  win_index_1 = win_combination[0]
  win_index_2 = win_combination[1]
  win_index_3 = win_combination[2]

  position_1 = board[win_index_1] # load the value of the board at win_index_1
  position_2 = board[win_index_2] # load the value of the board at win_index_2
  position_3 = board[win_index_3] # load the value of the board at win_index_3
puts "START2"
  if position_1 == "X" && position_2 == "X" && position_3 == "X"
    puts win_combination # return the win_combination indexes that won.
  else
    puts "FALSE"
    false
  end
end
end

puts "Input won? Board:"
won?(gets)
won?(gets)
won?(gets)
won?(gets)

def full?(board)
  board.none?{|i| i == " "}
end

def draw?(board)
  if full?(board)
    if !won?(board)
      true
    end
  end
end

def over?(board)
  if draw?(board) || won?(board)
    true
  end
end

def winner(board)

end

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

def won?(board = [" ", " ", " ", " ", " ", " ", " ", " ", " "])
  #if board.any?{|i| i != " "}
    puts "Start"
    WIN_COMBINATIONS.each do |i|
      puts "combo #{i}"
      a = i[0]
      b = i[1]
      c = i[2]
      puts "board1 #{a} #{b} #{c} #{board[a]} #{board[b]} #{board[c]}"
      if board[i[0]] != " " && board[i[1]] != " " && board[i[2]] != " "
        winner = i
        puts "winner: #{board}"
        break
      end
    end
    i
  #end
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

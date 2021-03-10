# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant

board = [" "," "," "," "," "," "," "," "," "]

WIN_COMBINATIONS = [
[0,1,2],
[3,4,5],
[6,7,8],
[0,3,6],
[1,4,7],
[2,5,8],
[0,4,8],
[6,4,2]
]

def won?(board)
  WIN_COMBINATIONS.each do |win_combination|
  win_index_1 = win_combination[0]
  win_index_2 = win_combination[1]
  win_index_3 = win_combination[2]
  
  position_1 = board[win_index_1]
  position_2 = board[win_index_2]
  position_3 = board[win_index_3]
  
  if position_1 == "X" && position_2 == "X" && position_3 == "X"
    return win_combination
  else
    false
  end
end

  board.any? {|position| position == "X" || position == "O"} 
  
  board.all? {|position| position == "X" && position == "O"}

end
  

def full?(board)
  board.all? {|position| position == "X" || position == "O"}
end


def draw?(board)
  if !won?(board) && full?(board)
    return true 
  elsif !full?(board) && !won?(board)
    return false
  else won?(board)
    return false
  end
end
  
def over?(board)
  if won?(board) || draw?(board) || full?(board)
   return true 
  elsif won?(board) || !draw?(board) || !full?(board)
   return true 
  else
   return false
  end
end 

def winner
  
end





  
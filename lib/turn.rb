def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "

end

def valid_move?(board,ind)
  if ind > 9 || ind < 0
    return false
  elsif board[ind] == " "
    return true
  elsif board[ind] == "X" || "O"
    return false
  end
end

def move (board,ind,tok = "X")
  if position_taken?(board,ind) == false
    board[ind] = tok
  end
  return board

end

def input_to_index(int)
  int = int.to_i - 1
  
  if int <9 && int >= 0
    return int
  else
    return nil
  end
end

def position_taken? (board,index)
  if board[index] == " "
    return false
  elsif board[index] == ""
    return false
  elsif board[index] == nil
    return false
  elsif board[index] == "X" || "O"
    return true
  end
end

def turn (board)
  pos = nil

  while pos == nil do
    puts "Please enter 1-9:"
    pos = gets.strip
    pos = input_to_index(pos)
      if pos == nil || pos == false
        puts "Invalid input. Try again."
      end
  end
  
  if position_taken?(board,pos) == false && valid_move?(board,pos)
    move(board,pos)
  end
  
  display_board(board)
  
end
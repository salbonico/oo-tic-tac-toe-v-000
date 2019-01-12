class TicTacToe

def initialize(board = nil)
  @board = Array.new(9, " ")
end

WIN_COMBINATIONS =[[0,1,2],[3,4,5],[6,7,8],[0,3,6],[1,4,7],[2,5,8],[0,4,8],[2,4,6]]

def display_board
puts " #{@board[0]} | #{@board[1]} | #{@board[2]} "
puts "-----------"
puts " #{@board[3]} | #{@board[4]} | #{@board[5]} "
puts "-----------"
puts " #{@board[6]} | #{@board[7]} | #{@board[8]} "
end

def input_to_index(input)
index = input.to_i
@index = index - 1
end

def move
@board[@index] = @xo
display_board
end

def position_taken?
!(@board[@index].nil? || @board[@index] == " ")
end

def valid_move?
if @index <0 || @index >8
return false
elsif
@board[@index] == " "
return true
else return false
end
end

def turn
puts "Please enter 1-9:"
input = gets.strip
input_to_index(input)
current_player

if valid_move? == true
move
else turn
end
end

def turn_count
  @count = 0
  @board.each do |position|
    if position == "X"|| position == "O"
      @count += 1
    end
  end
  end

  def current_player
    turn_count
    if @count % 2 == 0
      @xo = "X"
    else @xo = "O"
    end
  end

  def won?
  WIN_COMBINATIONS.each do |combo|
  tempx = combo.all? do |number|
  @board[number] == "X"
  end
  tempo = combo.all? do |number|
  @board[number] == "O"
  end
  if tempx == true || tempo == true
  return true
  end
  end
  return false
  end




end

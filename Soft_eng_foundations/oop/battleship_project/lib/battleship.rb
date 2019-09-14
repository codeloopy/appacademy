require_relative "board"
require_relative "player"

class Battleship

  def initialize(board_length)
    @player = Player.new()
    @board = Board.new(board_length)
    @remaining_misses = @board.size / 2
  end


  def board
    @board
  end
  
  
  def player
    @player
  end
  
  
  def start_game
    @board.place_random_ships
    puts "#{@board.size / 4} ships are on the board"
    @board.print
  end


  def lose?
    if @remaining_misses <= 0
      puts "You lose"
      return true
    else
      return false
    end
  end


  def win?
    if @board.num_ships == 0
      puts 'You win'
      return true
    else
      return false
    end
  end


  def game_over?
    if @board.win? || @board.lose?
      return true
    else
      return false
    end
  end

end

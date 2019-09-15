require_relative "board"
require_relative "player"

class Battleship

  attr_reader :board, :player

  def initialize(board_length)
    @player = Player.new()
    @board = Board.new(board_length)
    @remaining_misses = @board.size / 2
  end


  def start_game
    @board.place_random_ships
    puts "#{@board.num_ships} ships are on the board"
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
    if self.win? || self.lose?
      return true
    else
      return false
    end
  end


  def turn
    @remaining_misses -= 1 if !@board.attack(@player.get_move)
    @board.print
    puts @remaining_misses
  end

  # def turn   #aA's solution
  #   pos = @player.get_move
  #   if @board.attack(pos) == false
  #     @remaining_misses -= 1
  #   end
  #   @board.print
  #   puts "Remaining missed: #{@remaining_misses}"
  # end

end

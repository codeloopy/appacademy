# frozen_string_literal: true

require 'set'
# Ghost Game
class Game
  def initialize(player1, player2)
    @players = [player1, player2]
    @fragment = []
    @dictionary = File.readlines('./dictionary.txt').map(&:chomp).to_set
  end

  def play_round
  end

  def current_player
  end

  def previous_player
  end

  # updates current_player and previous_player
  def next_player!
  end

  def take_turn(player)
  end

  def valid_play?(string)
  end
end

new_game = Game.new('Pedro', 'Sandra')

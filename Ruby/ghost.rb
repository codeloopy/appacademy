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
end

new_game = Game.new('Pedro', 'Sandra')

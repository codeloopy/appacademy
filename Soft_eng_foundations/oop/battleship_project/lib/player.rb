class Player
  def get_move
    puts 'enter a position with coordinates separated with a space like `4 7`'
    input = gets.chomp
    input.split.map(&:to_i)
  end


  # def get_move   #aA's Solution
  #   puts 'Enter a position with coordinates separated with a space like `4 7`'
  #   gets.chomp.split(" ").map(&:to_i)
  # end

end

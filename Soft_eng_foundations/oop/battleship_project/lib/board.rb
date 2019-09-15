class Board

  def self.print_grid(grid)
    grid.each do |arr|
      puts arr.join(" ")
    end
  end

  attr_reader :grid, :size


  def initialize(number)
    @grid = Array.new(number) {Array.new(number, :N)}
    @size = number ** 2
  end


  def [](arr)
    row, col = arr
    @grid[row][col]
  end


  def []=(pos, val)
    row, col = pos
    @grid[row][col] = val
  end


  def num_ships
    count = 0
    @grid.each { |arr| count += arr.count(:S) if arr.include?(:S) }
    count
  end

  # def num_ships #aA's solution
  #   @grid.flatten.count { |ele| ele == :S }
  # end


  #PART 2
  def attack(pos)

    if self[pos] == :S
      self[pos] = :H
      puts "You sunk my battleship!"
      return true
    else
      self[pos] = :X
      return false
    end

  end


  def place_random_ships
    ships = @size * 0.25
    count = 0

    while count < ships
      row = rand(@grid.count)
      col = rand(@grid.count)

      if @grid[row][col] == :N
        @grid[row][col] = :S
        count += 1
      else
        count += 0
      end
    end
  end


  # def place_random_ships     #aA's solution
  #   total_ships = @size * 0.25

  #   while self.num_ships < total_ships
  #     rand_row = rand(0...@grid.length)
  #     rand_col = rand(0...@grid.length)
  #     pos = [rand_row, rand_col]
  #     self[pos] = :S
  #   end
  # end


  def hidden_ships_grid
    new_grid = []

    @grid.each_with_index do |arr, i|
      new_grid[i] = arr.map do |ele|
        if ele == :S
          ele = :N
        else
          ele
        end
      end
    end

    new_grid
  end


  # def hidden_ships_grid   #aA's Solution
  #   @grid.map do |row|
  #     row.map do |ele|
  #       if ele == :S
  #         :N
  #       else
  #         ele
  #       end
  #     end
  #   end
  # end


  def cheat
    Board.print_grid(@grid)
  end


  def print
    Board.print_grid(self.hidden_ships_grid)
  end
  
end
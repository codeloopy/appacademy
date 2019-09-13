class Board

  def self.print_grid(grid)
    grid.each do |arr|
      puts arr.join(" ")
    end
  end

  attr_reader :grid


  def initialize(number)
    @grid = Array.new(number) {Array.new(number, :N)}
    @size = number ** 2
  end


  def size
    @size
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


  #PART 2

  def attack(pos)
    row, col = pos

    if @grid[row][col] == :S
      @grid[row][col] = :H
      puts "You sunk my battleship!"
      return true
    else
      @grid[row][col] = :X
      return false
    end
  end


  def place_random_ships
    ships = @size * 0.25
    # count = @grid.count
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


  def cheat
    Board.print_grid(@grid)
  end


  def print
    Board.print_grid(self.hidden_ships_grid)
  end


  

end
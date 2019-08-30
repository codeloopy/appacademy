class Code

  attr_reader :pegs
  
  POSSIBLE_PEGS = {
    "R" => :red,
    "G" => :green,
    "B" => :blue,
    "Y" => :yellow
  }

  def self.valid_pegs?(chars)
    chars.all? { |c| POSSIBLE_PEGS.key?(c.upcase) }
  end

  
  def initialize(pegs)
    if !Code.valid_pegs?(pegs)
      raise "Error: invalid pegs"
    end
    
    @pegs = pegs.map(&:upcase)
  end


  def self.random(length)
    flatten_keys = POSSIBLE_PEGS.keys
    new_arr = Array.new(length).map {|i| flatten_keys.sample}
    Code.new(new_arr)
  end


  def self.from_string(pegs)
    Code.new(pegs.split(''))    
  end


  def [](index) 
    @pegs[index]
  end


  def length
    @pegs.length
  end

  # PART2
  def num_exact_matches(guess)
    
  end

end
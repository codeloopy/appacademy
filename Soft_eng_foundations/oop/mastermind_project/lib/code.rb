# Commented codeblocks are aA's solution
require 'byebug'

class Code

  attr_reader :pegs
  
  POSSIBLE_PEGS = {
    "R" => :red,
    "G" => :green,
    "B" => :blue,
    "Y" => :yellow
  }

  def self.valid_pegs?(chars)
    chars.all? { |c| POSSIBLE_PEGS.has_key?(c.upcase) }
  end

  
  def self.random(length)
    flatten_keys = POSSIBLE_PEGS.keys
    new_arr = Array.new(length).map { |i| flatten_keys.sample }
    Code.new(new_arr)
  end

  # def self.random(length)
  #   random_pegs = []
  #   length.times { random_pegs << POSSIBLE_PEGS.keys.sample }
  #   Code.new(random_pegs)
  # end


  def self.from_string(pegs)
    Code.new(pegs.split(''))    
  end



  def initialize(pegs)
    if Code.valid_pegs?(pegs)
      @pegs = pegs.map(&:upcase)
    else
      raise "Error: invalid pegs"
    end
  end


  def [](index) 
    @pegs[index]
  end


  def length
    @pegs.length
  end


  # PART2

  def num_exact_matches(guess_object)
    pegs = guess_object.pegs
    count = 0
    pegs.each_with_index { |char, i| count += 1 if char == @pegs[i] }
    count
  end
  
  # def num_exact_matches(guess_code)
  #   count = 0
  #   (0...guess_code.length).each do |i|
  #     count += 1 if guess_code[i] == self[i]
  #   end
  #   count
  # end

  def num_near_matches(guess_object)
    pegs = guess_object.pegs
    count = 0
    pegs.each_with_index do |char, i|
      count += 1 if @pegs.include?(char) && char != @pegs[i]
    end
    count
  end

  # def num_exact_matches(guess_code)
  #   count = 0
  #   (0...guess_code.length).each do |i|
  #     count += 1 if guess_code[i] != self[i] && self.pegs.include?(guess_code[i])
  #   end
  #   count
  # end



  def ==(guess_object)
    pegs = guess_object.pegs

    if @pegs.count == pegs.count
      return (@pegs - pegs).empty?
    end
    return false
  end

  # def ==(other_code)
  #   self.pegs == other_code.pegs
  # end

end
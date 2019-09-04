# Commented codeblocks are aA's solution
require 'byebug'
require_relative "code"

class Mastermind

  def initialize(length)
    @secret_code = Code.random(length)
  end


  def print_matches(code)    
    exact = Code.new(@secret_code.pegs).num_exact_matches(code)
    near = Code.new(@secret_code.pegs).num_near_matches(code)
    puts "Exact matches: #{exact}"
    puts "Near matches: #{near}"
  end

  # def print_matches(code)    
  #   exact = @secret_code.num_exact_matches(code)
  #   near = @secret_code.num_near_matches(code)
  #   puts "Exact matches: #{exact}"
  #   puts "Near matches: #{near}"
  # end


  def ask_user_for_guess
    puts "Enter a code"
    code = gets.chomp.upcase
    self.print_matches(Code.from_string(code))
    code.split('') == @secret_code.pegs
  end

  # def ask_user_for_guess
  #   puts "Enter a code"
  #   guess = Code.from_string(gets.chomp)
  #   self.print_matches(guess)
  #   guess == @secret_code
  # end

end
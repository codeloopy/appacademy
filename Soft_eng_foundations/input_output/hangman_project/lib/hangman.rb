require "byebug"

class Hangman
  def initialize
    # self.class.random_word
    @secret_word = Hangman.random_word
    # @secret_word = self.class.random_word
    @guess_word = Array.new(@secret_word.length,"_")
    @attempted_chars = []
    @remaining_incorrect_guesses = 5
  end

  DICTIONARY = ["cat", "dog", "bootcamp", "pizza"]

  def self.random_word
    DICTIONARY.sample
  end

  def guess_word
    @guess_word
  end

  def attempted_chars
    @attempted_chars
  end

  def remaining_incorrect_guesses
    @remaining_incorrect_guesses
  end

  def already_attempted?(char)
    # return @attempted_chars.include?(char) ? true : false
    @attempted_chars.include?(char)  # <-- will aready evaluate to true or false
  end

  def get_matching_indices(char)
    @secret_word.split('').each_with_index.collect { |ele, idx| idx if ele == char }.compact
  end

  def fill_indices(char, array)
    array.each { |idx| @guess_word[idx] = char }
  end

  # PART 2

  # def try_guess(char)
  #   indices_array = self.get_matching_indices(char)
    
    
  #   if indices_array == []
  #     @attempted_chars << char
  #     return @remaining_incorrect_guesses -= 1
  #   end
    
  #   if self.already_attempted?(char)
  #     puts "that has already been attempted"
  #     return false
  #   else
  #     @attempted_chars << char
  #     fill_indices(char, indices_array)
  #     return true
  #   end
  # end

  # aA's solution
  def try_guess(char)
    if self.already_attempted?(char)
      puts "that has already been attempted"
      return false
    end

    @attempted_chars << char

    matches = self.get_matching_indices(char)
    self.fill_indices(char, matches)

    @remaining_incorrect_guesses -= 1 if matches.empty?

    true
  end

  def ask_user_for_guess
    puts "Enter a char: "
    try_guess(gets.chomp)   #can pass the input directly into the method
    # user_input = gets.chomp
    # try_guess(user_input)
  end

  def win?
    if @guess_word.join('') == @secret_word
      puts "WIN"
      return true
    else
      return false
    end
  end

  def lose?
    if remaining_incorrect_guesses == 0
      puts "LOSE"
      return true
    else
      return false
    end
  end

  def game_over?
    # if win? || lose?
    if self.win? || self.lose?
      puts @secret_word
      return true
    else
      return false
    end
  end
  
end

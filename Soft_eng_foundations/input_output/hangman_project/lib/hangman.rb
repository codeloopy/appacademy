require "byebug"

class Hangman
  def initialize
    self.class.random_word
    @secret_word = self.class.random_word
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
    return @attempted_chars.include?(char) ? true : false
  end

  def get_matching_indices(char)
    @secret_word.split('').each_with_index.collect { |ele, idx| idx if ele == char }.compact
  end

  def fill_indices(char, array)
    array.each { |idx| @guess_word[idx] = char }
  end

  # PART 2

  def try_guess(char)
    indices_array = get_matching_indices(char)
    
    if indices_array == []
      @attempted_chars << char
      return @remaining_incorrect_guesses -= 1
    end
    
    # debugger
    if already_attempted?(char)
      puts "that has already been attempted"
      return false
    else
      @attempted_chars << char
      fill_indices(char, indices_array)
      return true
    end
  end

  def ask_user_for_guess
    puts "Enter a char: "
    user_input = gets.chomp
    try_guess(user_input)
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
    if win? || lose?
      puts @secret_word
      return true
    else
      return false
    end
  end
  
end

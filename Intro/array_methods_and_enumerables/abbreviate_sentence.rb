# Write a method abbreviate_sentence that takes in a sentence string
# and returns a new sentence where every word longer than 4 characters has
# all of it's vowels removed.

def abbreviate_sentence(sent)
  wordsArray = sent.split()
  finalArray = []

  wordsArray.each do |word|
    temp = []

    if word.length > 4
      word.each_char do |l|
        temp << l if l != 'a' && l != 'e' && l != 'i' && l != 'o' && l != 'u'
      end
    else
      temp << word
    end

    finalArray << temp.join()
  end
  return finalArray.join(' ')

end

puts abbreviate_sentence("follow the yellow brick road") # => "fllw the yllw brck road"
puts abbreviate_sentence("what a wonderful life")        # => "what a wndrfl life"






=begin
# aA solution - clever use of a helper function


def abbreviate_sentence(sent)
  words = sent.split(" ")
  new_words = []

  words.each do |word|
    if word.length > 4
      new_word = abbreviate_word(word)
      new_words << new_word
    else
      new_words << word
    end
  end

  return new_words.join(' ')
end




def abbreviate_word(word)
  vowels = 'aeiou'
  no_vowels = ''

  word.each_char do |char|
    if !vowels.include?(char)
      no_vowels += char
    end
  end

  return no_vowels
end





=end
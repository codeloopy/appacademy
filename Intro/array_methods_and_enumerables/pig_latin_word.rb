# Write a method pig_latin_word that takes in a word string
# and translates the word into pig latin.

# Pig latin translation uses the following rules:
# - for words that start with a vowel, add 'yay' to the end
# - for words that start with a nonvowel, move all letters before the first vowel to the end of the word and add 'ay'

def pig_latin_word(word)
  vowels = "aeiou"
  if vowels.include?(word[0])
    word += 'yay'
    return word
  else
    ay_words(word)
  end
end

def ay_words(word)
  vowels = 'aeiou'
  word = word.split('')
  new_word = []
  i = 0

  while i < word.length
    temp = []
    if !vowels.include?(word[i])
      temp << word.shift
      new_word = word << temp
    else
      break
    end
  end

  return new_word.join() + 'ay'
end

puts pig_latin_word("apple")   # => "appleyay"
puts pig_latin_word("eat")     # => "eatyay"
puts pig_latin_word("banana")  # => "ananabay"
puts pig_latin_word("trash")   # => "ashtray"
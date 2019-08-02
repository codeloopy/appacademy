# Write a method consonant_cancel that takes in a sentence
# and returns a new sentence where every word begins with it's first vowel.


def consonant_cancel(sentence)
  words = sentence.split(' ')
  new_sentence = []

  words.each { |word| new_sentence << discard_consonants(word) }
  return new_sentence.join(' ')
end

def discard_consonants(word)
  vowels = 'aeiou'
  result = ''

  word.each_char.with_index do |char, index|
    if vowels.include?(char)
      result += word[index..-1]
      break
    end
  end

  return result
end

p consonant_cancel("down the rabbit hole") #=> "own e abbit ole"
puts consonant_cancel("writing code is challenging") #=> "iting ode is allenging"





# # aA's solution

# def consonant_cancel(sentence)
#   words = sentence.plit('')
#   new_words = word.map { |word| remove_starting_consonants(word) }
#   return new_words.join(' ')
# end

# def remove_starting_consonants(word)
#   vowels = 'aeiou'
  
#   word.each_char.with_index do |char, i|
#     if vowels.include?(char)
#       return word[i..-1]
#     end
#   end
# end
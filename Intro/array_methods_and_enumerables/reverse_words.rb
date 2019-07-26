# Write a method reverse_words that takes in a sentence string
# and returns the sentence with the order of the characters in each word reversed.
# Note that we need to reverse the order of characters in the words,
# do not reverse the order of words in the sentence.

def reverse_words(sent)
  words = sent.split()
  reverse_words = []

  words.each do |word|
    reverse_words << reverse_a_word(word)

  end
  return reverse_words.join(' ')
end

def reverse_a_word(word)
  reversed_word = []
  i = 1
    while i <= word.length
      reversed_word << word[i * -1]
      i += 1
    end
  return reversed_word.join()
end




puts reverse_words('keep coding') # => 'peek gnidoc'
puts reverse_words('simplicity is prerequisite for reliability') # => 'yticilpmis si etisiuqererp rof ytilibailer'







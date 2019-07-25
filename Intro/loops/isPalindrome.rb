=begin
Write a method is_palindrome(word) that takes in a string word
and returns the true if the word is a palindrome, false otherwise.
A palindrome is a word that is spelled the same forwards and backwards.
=end

# def is_palindrome(word)
#   return word == word.reverse
# end

def is_palindrome(word)
  i = word.length
  revWord = ""

  while i > 0
    revWord += word[i-1]
    i -= 1
  end
  return revWord === word
end

puts is_palindrome("racecar")  # => true
puts is_palindrome("kayak")    # => true
puts is_palindrome("bootcamp") # => false

# Write a method caesar_cipher that takes in a string and a number.
# The method should return a new string where every character of the original
# is shifted num characters in the alphabet.


# Feel free to use this variable:
# alphabet = "abcdefghijklmnopqrstuvwxyz"

def caesar_cipher(str, num)
  new_word = []
  alphabet = "abcdefghijklmnopqrstuvwxyz"

  str.chars.each do |c|
    letter = alphabet[(alphabet.index(c) + num) % 26]
    new_word << letter
    # puts letter
  end

  return new_word.join('')
end

puts caesar_cipher("apple", 1)    #=> "bqqmf"
puts caesar_cipher("bootcamp", 2) #=> "dqqvecor"
puts caesar_cipher("zebra", 4)    #=> "difve"


# aA's solution
# def caesar_cipher(str, num)
#   alphabet = "abcdefghijklmnopqrstuvwxyz"
#   new_str = ''
#
#   str.each_char do |char|
#     old_index = alphabet.index(char)
#     new_index = old_index + num
#     new_char = alphabet[new_index % 26]
#     new_str += new_char
#   end
#   return new_str
# end

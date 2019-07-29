# Write a method last_index that takes in a string and a character.
# The method should return the last index where the character can be found
# in the string.


def last_index(str, char)
  return str.split('').rindex(char)
end

puts last_index("abca", "a")       #=> 3
puts last_index("mississipi", "i") #=> 9
puts last_index("octagon", "o")    #=> 5
puts last_index("programming", "m")#=> 7


# # aA's Solution
# def last_index(str, char)
#   i = str.length - 1
#   while i >= 0
#     return i if str[i] == char
#     i -= 1
#   end
# end
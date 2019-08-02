# Write a method anagrams? that takes in two words and returns a boolean
# indicating whether or not the words are anagrams.
# Anagrams are words that contain the same characters but not necessarily
# in the same order. Solve this without using .sort


def anagrams?(word1, word2)
  counter = 0
  i = 0
  
  if word1.length != word2.length
    return false
  else
    while i < word1.length
      counter += 1 if word2.include?(word1[i])
      i += 1
    end
  end

  return counter == word1.length ? true : false
end

puts anagrams?("cat", "act")          #=> true
puts anagrams?("restful", "fluster")  #=> true
puts anagrams?("cat", "dog")          #=> false
puts anagrams?("boot", "bootcamp")    #=> false


# # aA's Solution - muach cleaner

# def anagrams?(word1, word2)
#   return char_count(word1) == char_count(word2)
#   end
# end

# def char_count(word)
#   count = Hash.new(0)
#   word.each_char { |char| count[char] += 1 }
#   return count
# end
# Write a method vowel_cipher that takes in a string
# and returns a new string where every vowel becomes
# the next vowel in the alphabet.

def vowel_cipher(string)
  vowels = "aeiou"
  new_word = ''

  string.each_char do |char|
    if vowels.include?(char)
      next_vowel = (vowels.index(char) + 1) % 5
      new_word += vowels[next_vowel]
    else
      new_word += char
    end
    
  end

  return new_word
end

puts vowel_cipher("bootcamp") #=> buutcemp
puts vowel_cipher("paper cup") #=> pepir cap
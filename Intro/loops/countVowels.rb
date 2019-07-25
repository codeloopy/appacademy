def count_vowels(word)
  i = 0
  vowels = 0

  while i <= word.length
    if word[i] == "a" || word[i] == "e" || word[i] == "i" || word[i] == "o" || word[i] == "u"
      vowels += 1
    end

    i += 1
  end
  return vowels
end

puts count_vowels("bootcamp")  # => 3
puts count_vowels("apple")     # => 2
puts count_vowels("pizza")     # => 2

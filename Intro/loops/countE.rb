def count_e(word)
  i = 0
  e = 0
  while i < word.length
    if word[i] == "e"
      e += 1
    end
    i += 1
  end

  return e
end

puts count_e("movie") # => 1
puts count_e("excellent") # => 3

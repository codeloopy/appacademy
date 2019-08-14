def select_even_nums(nums)
  nums.select { |n| n.even? }
end




def reject_puppies(dogs)
  no_pupps = dogs.reject { |dog| dog["age"] <= 2 }
  no_pupps
end




def count_positive_subarrays(arrays)
  only_positive = arrays.count do |array|
    positive = array.reduce { |a, n| a + n }
    positive > 0
  end
end




def aba_translate(word)
  vowels = 'aeiou'
  new_word = word.each_char.map do |char|
    if vowels.include?(char)
      "#{char}b#{char}"
    else
      char
    end
  end
  new_word.join('')
end




def aba_array(words_array)
  words_array.map { |word| aba_translate(word) }
end
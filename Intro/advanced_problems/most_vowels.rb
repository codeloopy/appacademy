# Return the word with the most vowels

def many_vowels(sentence)
  hash = Hash.new(0)
  vowels = 'aeiou'
  words = sentence.split(" ")

  words.each do |word|
    word.split('').map() {|c| hash[word] += 1 if vowels.include?(c) }
  end

  highest_vowels_count = hash.sort_by { |k,v| -v }

  return highest_vowels_count[0][0]
end

print many_vowels("what a wonderful life")

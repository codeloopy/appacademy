def hipsterfy(word)
	vowels = 'aeiou'
	words = word.reverse.split('')
	
	words.each_with_index do |char, index|
		if vowels.include?(char)
			words[index] = ''
			break
		end
	end
	
	return words.join('').reverse
end


def vowel_counts(str)
	vowels = 'aeiou'
	count = Hash.new(0)
	
	str.downcase.each_char { |char| count[char] += 1 if vowels.include?(char) }

	count
end


def caesar_cipher(msg, n)
	new_word = []
  alphabet = "abcdefghijklmnopqrstuvwxyz"

	msg.chars.each do |c|
		if alphabet.include?(c)
			letter = alphabet[(alphabet.index(c) + n) % 26]
			new_word << letter
		else
			new_word << c
		end
  end

  return new_word.join('')
end
def partition(array, number)
	new_array = [[],[]]

	array.each do |num|
		if num < number
			new_array[0] << num
		elsif num >= number
			new_array[1] << num
		end
	end

	new_array
end


def merge(hash_1, hash_2)
	new_hash = hash_1.merge(hash_2)
	new_hash
end


def censor(sentence, array)
	vowels = 'aeiou'
	new_sentence = sentence.split(' ')

	new_sentence.each do |word|
		if array.map(&:downcase).any?(word.downcase)
			word.each_char.with_index { |char, i| word[i] = '*' if vowels.include?(char.downcase) }
		end
	end

	return new_sentence.join(' ')
end


# https://ruby-doc.org/core-2.5.0/Math.html#method-c-log

def power_of_two?(num)
	(Math.log2(num) % 1).zero?
end
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





# # aA's Solutions

# def partition(array, number)
# 	less = []
# 	greater = []

# 	array.each do |ele|
# 		if ele < number
# 			less << ele
# 		else
# 			greater << ele
# 		end
# 	end

# 	[less, greater]
# end


# def merge(hash_1, hash_2)
# 	new_hash = {}
# 	has_1.each { |k,v| new_hash[k] = v }
# 	has_2.each { |k,v| new_hash[k] = v }
# 	new_hash
# end


# def censor(sentence, curse_words)
# 	words = sentence.split(' ')

# 	new_words = words.map do |word.downcase|
# 		if curse_words.include?(word)
# 			star_vowels(word)
# 		else
# 			word
# 		end
# 	end

# 	new_words,join(' ')
# end

# def star_vowels(str)
# 	vowels = 'aeiou'
# 	new_str = ''

# 	string.each_char do |char|
# 		if vowels.include?(char.downcase)
# 			new_str += '*'
# 		else
# 			new_str += char
# 	end

# 	new_str
# end



# def power_of_two?(num)
# 	product = 1

# 	while product < num
# 		product *= 2
# 	end

# 	product == num
# end
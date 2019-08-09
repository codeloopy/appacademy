def palindrome?(str)
	reverse = []
	i = str.length

	while i >= 0
		reverse << str[i]
		i -= 1
	end
	
	str == reverse.join('')
end


def substrings(str)
	split_str = str.split('')
	final = []
	i = 0

	while i < split_str.length
		final << split_str[i]
		j = i
		while j < split_str.length - 1
			final << split_str[i] += split_str[j+1]
			j += 1
		end
		i += 1
	end
	
	final
end


def palindrome_substrings(str)
	final = []
	array = substrings(str)
	array.each do |item|
		if item.length > 1
			final << item if palindrome?(item)
		end
	end
	final
end





## aA's Solution

# def palindrome?(str)
# 	str.each_char.with_index do |char, i|
# 		if string[i] != string[-i - 1]
# 			return false
# 		end
# 	end
# 	true
# end



# def substrings(str)
# 	subs = []
# 	(0...str.length).each do |strart_idx|
# 		(strart_idx...str.length).each do |end_idx|
# 			subs << str[strart_idx..end_idx]
# 		end
# 	end

# 	subs
# end


# def palindrome_substrings(str)
# 	substrings(str).select { |substr| palindrome?(substr) && substr.length > 1 }
# end
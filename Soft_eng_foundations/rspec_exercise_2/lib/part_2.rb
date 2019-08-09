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
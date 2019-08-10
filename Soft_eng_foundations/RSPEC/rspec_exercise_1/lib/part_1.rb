def average(num1, num2)
  (num1 + num2) / 2.0
end

def average_array(arr)
	arr_sum = arr.inject { |a,n| a + n }
  arr_sum / (arr.length * 1.0)
end

def repeat(str, num)
	str * num  
end

def yell(str)
	"#{str.upcase}!"
end

def alternating_case(str)
	words = str.upcase.split(' ')
	i = 1

	while i < words.length
		words[i] = words[i].downcase
		i += 2
	end
	
	str = words.join(' ')
	str
end
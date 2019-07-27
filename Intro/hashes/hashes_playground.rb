# Lecture 4

# counting each letter in the string

# counter = Hash.new(0)

# str = "bootcamp prep"

# str.each_char do |char|
#     counter[char] += 1
# end

# puts counter




#Lecture 5
# When using a hash as a counter it needs to be initiated to 0 otherwise it'll initialte with nil
#and can't add numbers to nil.

# counter = Hash.new(0)
# str = "mississippi river"

# str.each_char do |char|
#   counter[char] += 1
# end

# puts counter
# puts

# sorted = counter.sort_by { |k,v| v } #by value order (smaller to higher)

# print sorted #returns 2d Array in order 



#Lecture 6
# All about nil
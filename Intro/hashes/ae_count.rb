# Write a method ae_count that takes in a string and returns a hash
#containing the number of a's and e's in the string.
#Assume the string contains only lowercase characters.

def ae_count(str)
  count = Hash.new(0)

  str.each_char do |char|
    count["a"] += 1 if char == "a"
    count["e"] += 1 if char == "e"
  end

  sorted = count.sort_by { |k| k }
  
  return sorted.to_h
end

puts ae_count("everyone can program") #=> {"a"=>2, "e"=>3}
puts ae_count("keyboard") #=> {"a"=>1, "e"=>1}



# # aA's solution
# def ae_count(str)
#   count = Hash.new(0)

#   str.each_char do |char|
#     if char == "a" || char == "e"
#       count[char] += 1
#     end
#   end

# return count
# end
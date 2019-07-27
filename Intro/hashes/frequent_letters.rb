# Write a method frequent_letters that takes in a string
# and returns an array containing the characters
# that appeared more than twice in the string.

def frequent_letters(string)
  count = Hash.new(0)
  most_common = []

  string.each_char { |letter| count[letter] += 1 }

  count.each { |k,v| most_common << k if v > 2 }

  return most_common
end

print frequent_letters('mississippi') #=> ["i", "s"]
puts
print frequent_letters('bootcamp') #=> []
puts
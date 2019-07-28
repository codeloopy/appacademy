# Write a method unique_elements that takes in an array and returns a new array
# where all duplicate elements are removed. Solve this using a hash.

# Hint: all keys of a hash are automatically unique

def unique_elements(arr)
  hash = Hash.new(0)
  non_duplicates = []

  arr.each { |char| hash[char] += 1 }

  hash.each_key { |k| non_duplicates << k }

  return non_duplicates
end

print unique_elements(['a', 'b', 'a', 'a', 'b', 'c']) #=> ["a", "b", "c"]
puts


# # aA's solution - pretty elegant and simple.
# def unique_elements(arr)
#   hash = {}
#   arr.each { |el| hash[el] = true }
#   return hash.keys
# end
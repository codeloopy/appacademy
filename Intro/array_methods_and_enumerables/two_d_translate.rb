# Write a method two_d_translate that takes in a 2 dimensional array
# and translates it into a 1 dimensional array.
# You can assume that the inner arrays always have 2 elements. See the examples.

def two_d_translate(arr)
  combined_array = []

  arr.each do |sub_arr|
    i = 0
    while i < sub_arr[1]
      combined_array << sub_arr[0]
      i += 1
    end
  end

  return combined_array
end

arr_1 = [
  ['boot', 3],
  ['camp', 2],
  ['program', 0]
]

print two_d_translate(arr_1) # => [ 'boot', 'boot', 'boot', 'camp', 'camp' ]
puts

arr_2 = [
  ['red', 1],
  ['blue', 4]
]

print two_d_translate(arr_2) # => [ 'red', 'blue', 'blue', 'blue', 'blue' ]
puts

# aA's solution - Much cleaner than mine

# def two_d_translate(arr)
#   new_array = []

#   arr.each do |sub_arr|
#     element = sub_arr[0]
#     num = sub_arr[1]

#     num.times { new_array << element }
#   end

#   return new_array
# end
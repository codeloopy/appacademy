# Write a method adjacent_sum that takes in an array of numbers and returns
# a new array containing the sums of adjacent numbers in the original array.
# See the examples.


def adjacent_sum(arr)
  new_arr = []
  stop = arr.length - 1

  (0...stop).each do |num|
    new_sum =  arr[num] + arr[num + 1]
    new_arr << new_sum
  end

  return new_arr
end

print adjacent_sum([3, 7, 2, 11]) #=> [10, 9, 13], because [ 3+7, 7+2, 2+11 ]
puts
print adjacent_sum([2, 5, 1, 9, 2, 4]) #=> [7, 6, 10, 11, 6], because [2+5, 5+1, 1+9, 9+2, 2+4]
puts



# # aA's Solution

# def adjacent_sum(arr)
#   sums = []
#   arr.each_with_index do |element, index|
#     if index != arr.length - 1
#       new_element = element + arr[index + 1]
#       sums << new_element
#     end
#   end

#   return sums
# end
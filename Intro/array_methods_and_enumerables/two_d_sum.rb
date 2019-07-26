# Write a method two_d_Sum that takes in a two dimensional array
# and returns the sum of all elements in the array.

def two_d_sum(arr)
  sum = 0

  arr.each do |num|
    if num.class == Array
      num.each do |num2|
        sum += num2
      end
    end
  end

  return sum
end

# Solution 2 - https://ruby-doc.org/core-2.4.1/Array.html
# def two_d_sum(arr)
#   return arr.flatten.sum
# end

array_1 = [
  [4, 5],
  [1, 3, 7, 1]
]
puts two_d_sum(array_1)    # => 21

array_2 = [
  [3, 3],
  [2],
  [2, 5]
]
puts two_d_sum(array_2)    # => 15
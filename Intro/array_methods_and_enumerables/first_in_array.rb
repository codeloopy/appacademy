# Write a method first_in_array that takes in an array and two elements,
# the method should return the element that appears earlier in the array

def first_in_array(arr, el1, el2)
  index1 = 0
  index2 = 0

  arr.each_with_index() do |element, index|
    if el1 == element
      index1 += index
    end

    if el2 == element
      index2 += index
    end
  end

  return index1 < index2 ? el1 : el2
end

puts first_in_array(["a", "b", "c", "d"], "d", "b"); # => "b"
puts first_in_array(["cat", "bird" ,"dog", "mouse" ], "dog", "mouse"); # => "dog"


=begin

# The correct solution is much more elegant and simple
def first_in_array(arr, el1, el2)
  if arr.index(el1) < arr.index(el2)
    return el1
  else
    return el2
  end

  =end
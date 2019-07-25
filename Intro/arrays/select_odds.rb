# Write a method select_odds(numbers) that takes in an array of numbers
# and returns a new array containing the odd numbers of the original array.

def select_odds(numbers)
  i = 0
  newArr = []

  while i < numbers.length
    newArr << numbers[i] if numbers[i] % 2 != 0
    i += 1
  end

  return newArr
end

print select_odds([13, 4, 3, 7, 6, 11]) # => [13, 3, 7, 11]
puts
print select_odds([2, 4, 6])            # => []

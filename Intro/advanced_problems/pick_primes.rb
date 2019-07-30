# Write a method pick_primes that takes in an array of numbers
# and returns a new array containing only the prime numbers.

def pick_primes(numbers)
  primes = numbers.each.select() { |num| prime?(num) }
  return primes
end

def prime?(num)
  track = 0
  return nil if num < 2
  (2..num).each { |c| track += 1 if num % c == 0 }
  return track == 1 ? num : nil
end

print pick_primes([2, 3, 4, 5, 6]) #=> [2, 3, 5]
puts
print pick_primes([101, 20, 103, 2017]) #=> [101, 103, 2017]
puts

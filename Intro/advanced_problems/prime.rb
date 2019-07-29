# Write a method prime? that takes in a number and returns a boolean,
# indicating whether the number is prime. A prime number is only
# divisible by 1 and itself.

def prime?(num)
  track = 0
  return false if num < 2
  (2..num).each { |c| track += 1 if num % c == 0 }
  return track == 1 ? true : false
end

puts prime?(2)  #=> true
puts prime?(5)  #=> true
puts prime?(11) #=> true
puts prime?(4)  #=> false
puts prime?(9)  #=> false
puts prime?(-5) #=> false


# # aA's Solution
#
# def prime?(num)
#   return false if num < 2
#   (2...num).each { |div| return false if num % div == 0 }
#   return true
# end


# Line 24 checks that the number is or not divisible; if it is divisible but
# something within the range then is not a prime cause it means that is 1 and num (the number in question)

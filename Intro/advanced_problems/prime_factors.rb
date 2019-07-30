# Write a method prime_factors that takes in a number
# and returns an array containing all of the prime factors
# of the given number.

def prime_factors(num)
  count = Hash.new(0)
  result = []
  i = 2

  while i <= num
    if prime?(i)
      num /= i
      count[i] += 1
    end
    i += 1
  end

  result = count.each_key.select() {|k| k}

  return result
end

def prime?(num)
  return false if num < 2
  (2...num).each { |div| return false if num % div == 0 }
  return true
end


# print prime_factors(24) #=> [2, 3]
# # puts
# print prime_factors(60) #=> [2, 3, 5]
# # puts


# # aA's Solution
# def prime_factors(num)
#   fact = []

#   (1..num).each do |i|
#     if num % i == 0 && prime?(i)
#       fact << i
#     end
#   end
#   return fact
# end

# def prime?(num)
#   if num < 2
#     return false
#   end

#   (2...num).each do |i|
#     if num % i == 0
#       return false
#     end 
#   end

#   return true
# end

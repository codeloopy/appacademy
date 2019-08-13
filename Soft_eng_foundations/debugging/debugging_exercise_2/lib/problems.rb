require 'byebug'
# Run `bundle exec rspec` and satisy the specs.
# You should implement your methods in this file.
# Feel free to use the debugger when you get stuck.

def largest_prime_factor(number)
  divisors = []
  i = -1

  if is_prime?(number)
    return number
  else
    (2...number).each { |n| divisors << n if number % n == 0 }
  end

  largest_prime = divisors.select { |prime| prime if is_prime?(prime) }
  largest_prime[-1]
end

def is_prime?(num)
  return false if num < 2
  (2...num).each { |factor| return false if num % factor == 0 }
  return true
end




def unique_chars?(str)
  counter = Hash.new(0)
  str.each_char { |letter| counter[letter] += 1 }
  !counter.has_value?(2)
end




def dupe_indices(array)
  record = Hash.new { |k,v| k[v] = [] }

  array.each_with_index do |k,i|
    record[k] += [i]
  end

  record.select { |k,v| v.length> 1 }
end




def ana_array(arr_1, arr_2)
  hash_convert(arr_1) == hash_convert(arr_2)
end

def hash_convert(array)
  counter = Hash.new(0)
  array.each { |item| counter[item] += 1}
  counter
end










# # aA's Solutions

# def is_prime?(num)
#   return false if num < 2
#   (2...num).none? { |i| num % i == 0 }
# end

# def largest_prime_factor(num)
#   num.downto(2) do |factor|
#     if num % factor == 0 && is_prime?(factor)
#       return factor
#     end
#   end
# end




# def unique_chars?(string)
#   already_seen = []

#   string.each_char do |char|
#     if already_seen.include?(char)
#       return false
#     end
#     already_seen << char
#   end

#   true
# end




# def dupe_indices(array)
#   indices = Hash.new() { |h, k| h[k] = [] }
#   array.each_with_index do |ele, i|
#     indices[ele] << i
#   end

#   indices.select { |ele, arr| arr.length > 1 }
# end




# def ele_count(arr)
#   count = Hash.new(0)
#   arr.each { |ele| count[ele] += 1 }
# end

# def ana_array(arr_1, arr_2)
#   count_1 = ele_count(arr_1)
#   count_2 = ele_count(arr_2)

#   count_1 == count_2
# end
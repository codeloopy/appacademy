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



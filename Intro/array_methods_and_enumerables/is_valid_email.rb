# Write a method is_valid_email that takes in a string and returns a boolean
# indicating whether or not it is a valid email address.


# For simplicity, we'll consider an email valid when it satisfies all of the following:
# - contains exactly one @ symbol
# - contains only lowercase alphabetic letters before the @
# - contains exactly one . after the @

def is_valid_email(str)
  email = str.split('@')

  return contains_one_at_symbol(email) && is_lower_case(email) && contains_one_dot_after_at(email) 
end

def is_lower_case(email)
  alphabet = "abcdefghijklmnopqrstuvwxyz"

  email[0].each_char do |char|
    return false if !alphabet.include?(char)

  end
  # email[0] == email[0].downcase || email[1] == email[1].downcase
end

def contains_one_at_symbol(email)
  email.length == 2
end

def contains_one_dot_after_at(email)
  email[-1].include?('.')
end



puts is_valid_email("abc@xy.z")         # => true
puts is_valid_email("jdoe@gmail.com")   # => true
puts is_valid_email("jdoe@g@mail.com")  # => false
puts is_valid_email("jdoe42@gmail.com") # => false
puts is_valid_email("jdoegmail.com")    # => false
puts is_valid_email("az@email")         # => false
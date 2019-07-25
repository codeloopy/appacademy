# Write a method format_name that takes in a name string
# and returns the name properly capitalized.

# Hint: use str.upcase and str.downcase
# "abc".upcase # => "ABC"

def format_name(str)
  names = str.downcase.split(' ')

  names.each do |name|
    name[0] = name[0].upcase
  end

  return names.join(" ")
end

puts format_name("chase WILSON") # => "Chase Wilson"
puts format_name("brian CrAwFoRd scoTT") # => "Brian Crawford Scott"



=begin

# aA's solution

def format_name(str)
  parts - str.split(' ')
  new_parts = []

  parts.each do |part|
    new_parts << part[0].upcase + part[1..-1].downcase
  end

  new_name = new_parts.join(' ')
  return new_name
end

=end
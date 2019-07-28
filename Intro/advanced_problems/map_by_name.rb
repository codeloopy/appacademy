# Write a method map_by_name that takes in an array of hashes
# and returns a new array containing the names of each hash.

def map_by_name(arr)
  names_only = arr.map() { |hash| hash["name"] }
  return names_only
end


pets = [
  {"type"=>"dog", "name"=>"Rolo"},
  {"type"=>"cat", "name"=>"Sunny"},
  {"type"=>"rat", "name"=>"Saki"},
  {"type"=>"dog", "name"=>"Finn"},
  {"type"=>"cat", "name"=>"Buffy"}
]
print map_by_name(pets) #=> ["Rolo", "Sunny", "Saki", "Finn", "Buffy"]
puts

countries = [
 {"name"=>"Japan", "continent"=>"Asia"},
 {"name"=>"Hungary", "continent"=>"Europe"},
 {"name"=>"Kenya", "continent"=>"Africa"},
]
print map_by_name(countries) #=> ["Japan", "Hungary", "Kenya"]
puts


# aA's solution is exactly the same except they didn't add the result of the map method to a variable
# they just returned it directly --->    return arr.map() { |hash| hash["name"] }
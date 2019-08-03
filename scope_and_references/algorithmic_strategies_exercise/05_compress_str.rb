# Write a method, compress_str(str), that accepts a string as an arg.
# The method should return a new str where streaks of consecutive characters are compressed.
# For example "aaabbc" is compressed to "3a2bc".


def compress_str(str)
  new_str = str.split('')
  count = 1
  result = []

  (0...new_str.length).each do |i|
    if new_str[i] == new_str[i+1]
      count += 1
    else
      result << count.to_s
      result << new_str[i]
      count = 1
    end
  end
  
  result.map {|e| e.gsub('1','')}.join('')
end

p compress_str("aaabbc")        # => "3a2bc"
p compress_str("xxyyyyzz")      # => "2x4y2z"
p compress_str("qqqqq")         # => "5q"
p compress_str("mississippi")   # => "mi2si2si2pi"
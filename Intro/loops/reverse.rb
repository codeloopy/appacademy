=begin
Write a method reverse(word) that takes in a string word
and returns the word with its letters in reverse order.
=end

def reverse(word)
  i = word.length
  while i >= 0
    print word[i]
    i -= 1
  end
end

puts reverse("cat")          # => "tac"
puts reverse("programming")  # => "gnimmargorp"
puts reverse("bootcamp")     # => "pmactoob"

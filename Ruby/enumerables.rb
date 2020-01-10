class Array

  #ENUMERABLE

  def my_each(&prc)
    i = 0
    while i < self.length
      prc.call(self[i])
      i += 1
    end
    self
  end



  def my_select(&prc)
    new_arr = []
    i = 0

    while i < self.length
      new_arr << self[i] if prc.call(self[i])
      i += 1
    end
    
    new_arr
  end



  def my_reject(&prc)
    new_arr = []
    i = 0

    while i < self.length
      new_arr << self[i] if !prc.call(self[i])
      i += 1
    end
    
    new_arr
  end



  def my_any?(&prc)
    i = 0

    while i < self.length
      return true if proc.call(self[i])
      i += 1
    end

    false
  end


  def my_all?(&prc)
    i = 0
    count = 0

    while i < self.length
      if proc.call(self[i])
        count += 1
      end
      i += 1
    end

    return true if self.length == count

    false
  end


	#ARRAY
	
	def my_flatten(new_arr = [])
		self.each do |ele|
      if ele.is_a?(Array)
				new_arr = ele.my_flatten(new_arr)
      else
        new_arr << ele
      end
		end
		new_arr
  end


  def my_zip(*args)
    final_arr = []

    self.each_with_index do |num, idx|
      final_arr << [num]
    end

    i = 0
    while i < args.length
      final_arr.each_index do |ind|
        final_arr[ind] << args[i][ind]
      end
      i += 1
    end

    final_arr
  end

end





=begin
My Zip
Write my_zip to take any number of arguments. It should return a new array
containing self.length elements. Each element of the new array should be
an array with a length of the input arguments + 1 and contain the merged elements
at that index. If the size of any argument is less than self,
nil is returned for that location.

Example:

a = [ 4, 5, 6 ]
b = [ 7, 8, 9 ]
[1, 2, 3].my_zip(a, b) # => [[1, 4, 7], [2, 5, 8], [3, 6, 9]]
a.my_zip([1,2], [8])   # => [[4, 1, 8], [5, 2, nil], [6, nil, nil]]
[1, 2].my_zip(a, b)    # => [[1, 4, 7], [2, 5, 8]]

c = [10, 11, 12]
d = [13, 14, 15]
[1, 2].my_zip(a, b, c, d)    # => [[1, 4, 7, 10, 13], [2, 5, 8, 11, 14]]
My Rotate
Write a method my_rotate that returns a new array containing all the elements
of the original array in a rotated order. By default, the array should rotate
by one element. If a negative value is given, the array is rotated
in the opposite direction.

Example:

a = [ "a", "b", "c", "d" ]
a.my_rotate         #=> ["b", "c", "d", "a"]
a.my_rotate(2)      #=> ["c", "d", "a", "b"]
a.my_rotate(-3)     #=> ["b", "c", "d", "a"]
a.my_rotate(15)     #=> ["d", "a", "b", "c"]

My Join
my_join returns a single string containing all the elements of the array,
separated by the given string separator. If no separator is given,
an empty string is used.

Example:

a = [ "a", "b", "c", "d" ]
a.my_join         # => "abcd"
a.my_join("$")    # => "a$b$c$d"

My Reverse
Write a method that returns a new array containing all the elements
of the original array in reverse order.

Example:

[ "a", "b", "c" ].my_reverse   #=> ["c", "b", "a"]
[ 1 ].my_reverse               #=> [1]
Review
Now that we're all warmed up, let's review the iteration exercises from
the prepwork. Implement the following methods:

#factors(num)
#bubble_sort!(&prc)
#bubble_sort(&prc)
#substrings(string)
#subwords(word, dictionary)

Although these exercises are from the prepwork and come with specs, use this opportunity to practice your own testing skills. Write out each method, think of a few different example cases, and test out your code in pry.

If you are having a tough time thinking of example cases, check out the specs. You can use those examples to test your solutions. Don't forget to move your enumerables_array.rb into a lib directory!

Did you find this lesson helpful?

=end
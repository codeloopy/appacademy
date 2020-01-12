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


  def my_join(sym = '')
    i = 0
    new_word = ''

    while i < self.length - 1
      new_word += "#{self[i]}#{sym}"
      i += 1      
    end

    new_word + self[-1]
  end


  def my_reverse
    revsd = []
    i = self.length - 1
    
    while i >= 0 
      revsd << self[i]
    i -= 1  
    end

    revsd
  end


end





=begin
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
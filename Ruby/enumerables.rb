# frozen_string_literal: true

# Extending Array class for enumerables
class Array
  def my_each(&prc)
    i = 0
    # while i < self.length -> before Rubocop
    while i < length
      prc.call(self[i])
      i += 1
    end
    self
  end

  def my_select(&prc)
    new_arr = []
    i = 0

    # while i < self.length -> before Rubocop
    while i < length
      new_arr << self[i] if prc.call(self[i])
      i += 1
    end
    new_arr
  end

  def my_reject(&prc)
    new_arr = []
    i = 0

    # while i < self.length -> before Rubocop
    while i < length
      new_arr << self[i] unless prc.call(self[i])
      i += 1
    end

    new_arr
  end

  def my_any?(&prc)
    i = 0

    # while i < self.length -> before Rubocop
    while i < length
      return true if prc.call(self[i])

      i += 1
    end

    false
  end

  def my_all?(&prc)
    i = 0
    count = 0

    # while i < self.length -> before Rubocop
    while i < length
      count += 1 if prc.call(self[i])
      i += 1
    end

    # return true if self.length == count -> before Rubocop
    return true if length == count

    false
  end

  # ARRAY

  def my_flatten(new_arr = [])
    # self.each do |ele| -> before Rubocop
    each do |ele|
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

    # self.each_with_index do |num, idx| -> before Rubocop
    # each_with_index do |num, idx| -> before Rubocop
    each do |num|
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

    # while i < self.length - 1 -> before Rubocop
    while i < length - 1
      new_word += "#{self[i]}#{sym}"
      i += 1
    end

    new_word + self[-1]
  end

  def my_reverse
    revsd = []
    # i = self.length - 1 -> before Rubocop
    i = length - 1

    while i >= 0
      revsd << self[i]
      i -= 1
    end

    revsd
  end
end

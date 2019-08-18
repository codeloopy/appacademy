# Monkey-Patch Ruby's existing Array class to add your own custom methods
class Array
  def span
    return nil if self.empty?
    self.max - self.min
  end


  def average
    return nil if self.empty?
    self.sum / (self.count * 1.0)
  end


  def median
    return nil if self.empty?

    if self.length.odd?
      return self.sort[self.length / 2.0]
    else
      middle = self.count / 2
      sorted = self.sort
      return (sorted[middle] + sorted[middle - 1]) / 2.0
    end
  end


  def counts
    count = Hash.new(0)
    return {} if self.empty?
    self.each { |key| count[key] += 1 }
    count
  end




  # part 2

  def my_count(key)
    count = Hash.new(0)
    self.each { |key| count[key] += 1 }
    count[key]
  end


  def my_index(element)
    index = 0

    return nil if !self.include?(element)

    self.each do |value|
      return index if value == element
      index += 1
    end
  end


  def my_uniq
    accum_array = []
    self.each do |ele|
      accum_array << ele if !accum_array.include?(ele)
    end
    accum_array
  end


  def my_transpose
    transpose = Array.new(self.count) {Array.new(self.count, '')}
    i = 0
    while i < self.length
      self[i].each_with_index { |num, idx| transpose[idx][i] = num }
      i += 1
    end
    transpose
  end
end
def reverser(string, &proc)
  proc.call(string.reverse)
end




def word_changer(string, &proc)
  new_str = []
  string.split(' ').each { |word| new_str << proc.call(word) }
  new_str.join(' ')
end




def greater_proc_value(num, proc_1, proc_2)
  proc1 = proc_1.call(num)
  proc2 = proc_2.call(num)
  return proc1 > proc2 ? proc1 : proc2
end




def and_selector(array, proc_1, proc_2)
  new_arr = []
  array.each { |el| new_arr << el if proc_1.call(el) && proc_2.call(el) }
  new_arr
end




def alternating_mapper(array, proc_1, proc_2)
  new_arr = []
  array.each_with_index do |el, i|
    i % 2 == 0 ? new_arr << proc_1.call(el) : new_arr << proc_2.call(el)
  end
  new_arr
end
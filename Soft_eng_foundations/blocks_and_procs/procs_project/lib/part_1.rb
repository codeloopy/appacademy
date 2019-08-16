def my_map(array, &proc)
  new_arr = []
  array.each { |num| new_arr << proc.call(num) }
  new_arr
end




def my_select(arr, &proc)
  new_array = []
  arr.each { |num| new_array << num if proc.call(num) }
  new_array
end




def my_count(arr, &proc)
  count = 0
  arr.each { |el| count += 1 if proc.call(el) }
  count
end




def my_any?(arr, &proc)
  arr.each { |el| return true if proc.call(el) == true }
  false
end




def my_all?(arr, &proc)
  arr.each { |el| return false if proc.call(el) == false }
  true
end




def my_none?(arr, &proc)
  count = 0
  arr.each { |el| count += 1 if proc.call(el) == false }
  count == arr.length ? true : false
end
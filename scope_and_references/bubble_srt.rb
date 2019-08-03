def bubble_sort(arr)
  sort = false
  while !sort
    sort = true
    (0...arr.length - 1).each do |i|
      if arr[i] > arr[i+1]
        arr[i], arr[i+1] = arr[i+1], arr[i]
        sort = false
      end
    end
  end
  arr
end



arr = [2,8,5,2,6]
# bubble_sort(arr)
p bubble_sort(arr)
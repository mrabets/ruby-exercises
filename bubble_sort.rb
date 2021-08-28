def bubble_sort(arr)
  loop do
    is_swapped = false
    (arr.size - 1).times do |i|
      if arr[i] > arr[i + 1]
        arr[i], arr[i + 1] = arr[i + 1], arr[i]
        is_swapped = true
      end
    end
    break unless is_swapped
  end

  arr
end

arr = [4, 3, 78, 2, 0, 2]

print bubble_sort(arr)

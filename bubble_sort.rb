arr = [4,3,78,2,0,2]

loop do 
  isSwapped = false

  (arr.size-1).times do |i|
    if arr[i] > arr[i+1]
      arr[i], arr[i+1] = arr[i+1], arr[i]
      isSwapped = true
    end
  end

  break if !isSwapped
end

print "\n", arr.inspect
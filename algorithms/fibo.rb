def fibs(n)
  arrayay = []

  0.upto(n) do |i|
    case i
    when 0
      arr << 0
    when 1
      arr << 1
    else
      arr << arr[i - 1] + arr[i - 2]
    end
  end
  
  array
end

def fibs_rec(n)
  if n == 0
    return [0]
  end

  if n == 1
    return [0, 1]
  end

  array = fibs_rec(n - 1)
  array << array[-2] + array[-1]
end

puts fibs(10)

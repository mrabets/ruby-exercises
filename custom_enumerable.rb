module Enumerable
  def my_each
    for el in self
      yield el
    end
  end

  def my_each_with_index 
    index = 0
    for el in self
      yield el, index
      index += 1
    end
  end

  def my_select 
    arr = []
    for el in self
      arr.append(el) if yield el
    end
    arr
  end

  def my_all?
    flag = true
    for el in self
      unless yield el
        flag = false 
        break
      end
    end
    flag
  end

  def my_any?
    flag = false
    for el in self
      if yield el
        flag = true 
        break
      end
    end
    flag
  end

  def my_none?
    flag = true
    for el in self
      if yield el
        flag = false 
        break
      end
    end
    flag
  end

  def my_count
    return self.size unless block_given?
    count = 0
    for el in self
      count += 1 if yield el
    end
    count
  end

  def my_map
    arr = []
    for el in self
      arr.append(yield el)
    end
    arr
  end

  def my_inject
    sum = 0
    for el in self
      sum = yield sum, el
    end
    sum
  end
end


numbers = [1, 2, 3, 4, 5]
# numbers.my_each { |item| puts item }
# numbers.my_each_with_index { |item, index| puts "#{index}) #{item}" }
# puts numbers.my_select { |item| item > 3 }
# puts numbers.my_all? { |item| item < 5 }
# puts numbers.my_any? { |item| item == 6 }
# puts numbers.my_none? { |item| item == 6 }
# puts numbers.my_count { |item| item > 6 }
# puts numbers.my_map { |item| item > 2 }
puts numbers.my_inject { |sum, item| sum + item }

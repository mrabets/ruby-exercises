def stock_picker(stock_prices)
  hh = Hash.new
  stock_prices.each.with_index { |x, index| hh[x] = index if hh[x] == nil }

  sorted_stock_prices = stock_prices.sort

  best_profit = 0
  best_day_to_buy = 0
  best_day_to_sell = 1

  sorted_stock_prices.each do |min_elem|
    min_index = hh[min_elem]
    sub_stock_prices = stock_prices[min_index..-1]
    max_elem = sub_stock_prices.max
    current_profit = max_elem - min_elem

    if current_profit > best_profit
      best_profit = current_profit
      best_day_to_buy = min_index
      best_day_to_sell = hh[max_elem]
    end
  end

  [best_day_to_buy, best_day_to_sell]
end

print stock_picker([20,2,7,13,9,1,5,11,1])
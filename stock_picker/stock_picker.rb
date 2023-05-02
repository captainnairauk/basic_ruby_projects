stock_prices = [17, 3, 6, 9, 15, 8, 6, 1, 10]

def stock_picker(array)
  days = [0, 0]

  array.each_with_index do |price1, idx1|
    array.each_with_index do |price2, idx2|
      first_day_price = array[days[0]]
      last_day_price = array[days[1]]
      if (idx2 > idx1) && (last_day_price - first_day_price < price2 - price1)
        days[0] = idx1
        days[1] = idx2
      end
    end
  end
  p days
end

stock_picker(stock_prices)

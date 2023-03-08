def stock_picker(prices)
    best_profit = 0
    buy_low_sell_high = ""
    
    prices.each_with_index do |element1, index1|
        prices.each_with_index do |element2, index2|
          #puts "el1: #{element1},el2: #{element2}"

          profit = element2 - element1

          if profit > best_profit && index1 < index2
            best_profit = profit
            buy_low_sell_high =[index1,index2]
          end
        end
    end
  p buy_low_sell_high
end

    
stock_picker([17,3,6,9,15,8,6,1,10])
# => [1, 4]
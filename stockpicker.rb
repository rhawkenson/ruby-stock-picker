#Subproblems to solve: 
#   1. Look at the stock and choose the lowest number, this is the best day to buy
#       Sort to find the smallest value
#       Get the index of the smallest value - store as the buy date 

#   2. From the buy date forward, choose the highest number, this is the best day to sell 
#       If low (buy) index > high (sell) index, skip to the next highest number
#       Get the index of the largest value - this is the sell date

#   3. Subtract the sell price from the buy price to calculate the profit 

#   4. Loop over the small values and store the best profit available, 
#       even if you don't buy the lowest or sell the highest overall
#       Store the corresponding buy and sell dates when a higher profit is evaluated

def stock_picker(arr)
  sort_lowest = arr.sort
  buy_price = sort_lowest[0]
  buy_date = arr.index(sort_lowest[0])

  sort_highest = arr.sort.reverse

  profit = 0


  sort_highest.each do |sell_price| 
    sell_date = arr.index(sell_price)
    if sell_date > buy_date
      if sell_price > buy_price
        profit = sell_price - buy_price
        puts profit
      end 
    end 
  end
end




  stock_picker([17,3,6,9,15,8,6,1,10])
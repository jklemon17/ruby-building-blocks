def stock_picker(params)
  i=0
  profit = 0
  buy = 0
  sell = 0

  params[0...-1].each do |x|
    n=0
    params[i+1..-1].each do |y|
      n+=1
      if y-x > profit
        profit = y-x
        buy = i
        sell = i+n
      end
    end
    i+=1
  end
  output = ["Buy: " + buy.to_s,"Sell: " + sell.to_s,"Profit: $" + profit.to_s]
  puts output
end

stock_picker([5,2,10,1,7,10,1])

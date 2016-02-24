class OptimalStockPrice
  #from https://www.interviewcake.com/question/ruby/stock-price
  def get_max_profit(stock_prices_yesterday)
    max = stock_prices_yesterday[0]
    min = stock_prices_yesterday[0]
    for i in 0...stock_prices_yesterday.length do
      if stock_prices_yesterday[i] > max
        max = stock_prices_yesterday[i]
      elsif stock_prices_yesterday[i] < min
        min = stock_prices_yesterday[i]
      end
    end
    max - min
  end
end
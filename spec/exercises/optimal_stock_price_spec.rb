require_relative '../../exercises/optimal_stock_price'
describe OptimalStockPrice do
  context '#get_max_profit' do
    it 'returns the best profit that could be made from a purchase' do
      stock_prices_yesterday = [10, 7, 5, 8, 11, 9]
      expect(OptimalStockPrice.new.get_max_profit(stock_prices_yesterday))
      .to eq 6
    end
  end
end
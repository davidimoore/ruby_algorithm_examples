require_relative '../lib/factorials'
describe Factorials do
  context '.iterative' do
    it 'returns the value of n!' do
      expect(Factorials.new.iterative(5)).to eq 120
      expect(Factorials.new.iterative(0)).to eq 1
    end
  end
end
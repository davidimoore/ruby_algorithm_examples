require_relative '../../lib/binary_search.rb'
describe BinarySearch do
  context '.find_index_of_integer' do
    it 'quickly finds a number in an array' do
      primes = [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97]
      expect(BinarySearch.new(primes).find_index_of_integer(67))
      .to eq 18
    end
  end
end
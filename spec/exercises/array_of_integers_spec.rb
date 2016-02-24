require_relative '../../exercises/array_of_integers'
describe ArrayOfIntegers do
  context '#get_products_of_all_ints_except_at_index' do
    it 'returns an array of products for all numbers except for the current index' do
      example_array = [1, 2, 6, 5, 9]

      expect(ArrayOfIntegers.new.get_products_of_all_ints_except_at_index(example_array))
      .to eq [540, 270, 90, 108, 60]
    end
  end
end
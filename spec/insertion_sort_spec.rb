require_relative '../lib/insertion_sort'
describe InsertionSort do
  context 'run' do
    let(:array) {[22, 11, 99, 88, 9, 7, 42]}
    let(:sorted_array) {[7, 9, 11, 22, 42, 88, 99]}
    it 'loops through an array and inserts items in order' do
      expect(InsertionSort.new.run(array))
      .to eq sorted_array
    end
  end

  context 'insert' do
    let(:array) {[3, 5, 7, 11, 13, 2, 9, 6]}
    let(:right_index) {4}
    let(:value_to_insert) {2}
    let(:array_with_inserted_value) {[2, 3, 5, 7, 11, 13, 9, 6]}
    it 'inserts a value before a given index in an array' do
      expect(InsertionSort.new.insert(array, right_index, value_to_insert))
      .to eq array_with_inserted_value
    end
  end
end
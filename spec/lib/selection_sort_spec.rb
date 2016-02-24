require_relative '../../lib/selection_sort'

describe SelectionSort do
  context '#run' do
    let(:unsorted_list) {[10,9,8,7,6,5,4,3,2,1]}
    let(:sorted_list) {[1,2,3,4,5,6,7,8,9,10]}
    it 'sorts an array from left to right smallest to largest value' do
      expect(SelectionSort.new.run(unsorted_list))
      .to match sorted_list
    end
  end

  context '#swap' do
    let(:array) {[2,1]}
    let!(:first_index) {0}
    let!(:last_index) {1}
    let(:array_with_swapped_values) {[1,2]}
    it 'swaps two values found in an array' do
      expect(SelectionSort.new.swap(array, first_index, last_index))
      .to match array_with_swapped_values
    end
  end

  context '#index_of_minimum' do
    let!(:array) {[10,2,5,3,1,8]}
    it 'finds the index of minimum value in a subarray' do
      expect(SelectionSort.new.index_of_minimum(array, 2))
      .to eq 4
    end

    it 'finds the index of minimum value in an entire array' do
      expect(SelectionSort.new.index_of_minimum(array, 0))
      .to eq 4
    end
  end
end
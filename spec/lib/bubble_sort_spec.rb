require_relative '../../lib/bubble_sort'
RSpec.describe BubbleSort do
  let(:unsorted_list) {[10,9,8,7,6,5,4,3,2,1]}
  let(:sorted_list) {[1,2,3,4,5,6,7,8,9,10]}
  context '.bubble_sort' do
    it 'sorts an array of items by repeatedly iterating through the list' do
      expect(BubbleSort.bubble_sort(unsorted_list))
      .to eq(sorted_list)
    end
  end




end
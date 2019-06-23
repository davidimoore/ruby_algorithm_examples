require_relative '../lib/merge_sort'
describe "merge sort" do
  # copy list to an auxilary array
  # divide array in half
  # compare the first index of each subarray
  # place the greatest of the two in the first index of the original array
  # move the point of the subarray that had the lowest value
  it 'sorts an array in place' do
    unsorted_list  = [10, 9, 8, 7, 6, 5, 4, 3, 2, 1]
    auxilery_array = Array.new(unsorted_list.length)
    sorted_list = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
    MergeSort.new.merge(unsorted_list, 10, 14, 18)

  end
end



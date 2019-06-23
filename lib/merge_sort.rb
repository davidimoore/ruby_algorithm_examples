class MergeSort
  attr_reader
  def merge(unsorted_array, low, mid, high)
    auxilary_array = unsorted_array


    i = low
    j = mid + 1

    (low...high).each_with_index do |num, k|
      if i > mid;     unsorted_array[k] = auxilary_array[mid += 1]
      elsif j > high; unsorted_array[k] = auxilary_array[mid += 1]
      elsif auxilary_array[j] < auxilary_array[i];

      end
    end
  end
end





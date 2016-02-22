class SortingAlgorithms
  def self.bubble_sort(unsorted_array)
    n = unsorted_array.length
    loop do
      swapped = false

      (n-1).times do |i|
        if unsorted_array[i] > unsorted_array[i + 1]
          unsorted_array[i], unsorted_array[i + 1] = unsorted_array[i+1], unsorted_array[i]
          swapped = true
        end
      end

      break unless swapped
    end

    unsorted_array
  end




end
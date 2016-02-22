class SelectionSort

  def run(array)
    @array = array
    last_index = @array.length
    for iterator in 0...last_index
      index_of_lowest = index_of_minimum(@array, iterator)
      swap(@array, index_of_lowest, iterator)
    end

     @array
  end

  def swap(array, first_index, last_index)
    temp =  array[first_index]
    array[first_index] = array[last_index]
    array[last_index] = temp
    array
  end

  def index_of_minimum(array, start_index)
    minimum_index = start_index
    last_index = array.length

    for iterator in (start_index + 1)...last_index do
      if array[iterator] < array[minimum_index]
        minimum_index = iterator
      end
    end

    minimum_index
  end
end
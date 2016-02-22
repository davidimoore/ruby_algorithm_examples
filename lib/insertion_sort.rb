class InsertionSort
  def run(array)
    for key in 1...array.length do
       insert(array, key, array[key])
    end
    array
  end

  def insert(array, right_index, value_to_insert)

    for iterator in right_index.downto(0) do

      if array[iterator] > value_to_insert
        array[iterator + 1] = array[iterator]
        array[iterator] = value_to_insert
      end
    end
    array

  end


end
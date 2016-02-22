class MergeSort
  def run(unsorted_array)
    return unsorted_array if unsorted_array.size <= 1
    mid   = unsorted_array.size / 2
    left  = unsorted_array[0, mid]
    right = unsorted_array[mid, unsorted_array.size]
    merge(run(left), run(right))
  end

  def merge(left, right)
    sorted = []
    until left.empty? || right.empty?
      if left.first <= right.first
        sorted << left.shift
      else
        sorted << right.shift
      end
    end
    sorted.concat(left).concat(right)
  end
end
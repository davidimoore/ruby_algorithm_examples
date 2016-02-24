class ArrayOfIntegers
  def get_products_of_all_ints_except_at_index(array)
    products_so_far = 1
    products_of_all_ints_before_index = []
    for i in 0...array.length do
      products_of_all_ints_before_index[i] = products_so_far
      products_so_far *= array
    end
  end
end
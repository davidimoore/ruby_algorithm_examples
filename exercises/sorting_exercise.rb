class SortingExercise

  def self.reverse_a_string(string)
    string_array = string.split("")
    i = 0
    last_character = string_array.count - 1
    reversed_string_array = []

    while i <= last_character
      current_character = last_character - i
      reversed_string_array << string_array[current_character]
      i += 1
    end
    reversed_string_array.join("")
  end


  def self.index_of_minimum(array, starting_index)
    minimum_index = starting_index
    last_index = array.length
    initial_place_in_array = starting_index + 1

    for place_in_array in (initial_place_in_array..last_index) do
      if array[place_in_array] < array[minimum_index]
        minimum_index = place_in_array
      end
    end
  end


end
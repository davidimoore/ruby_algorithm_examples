require_relative '../../exercises/sorting_exercise'
describe SortingExercise do
  context '.reverse_a_string' do
    it 'reverses a string' do
      expect(SortingExercise.reverse_a_string("eulb si esuoh eht"))
      .to eq("the house is blue")
    end
  end

  context '.index_of_minimum' do
    it 'find an index of the smallest number in a array starting at a given index' do
      array = [18, 6, 66, 44, 9, 22, 14]
      starting_index = 2
      expect(SortingExercise.index_of_minimum(array, starting_index))
      .to eq(4)
    end
  end

end
class BinarySearch
  def initialize(array)
    @array = array
    @min = 0
    @max = @array.length - 1
    @guess = (@max + @min)/2
  end

  def find_index_of_integer(number)
    @number = number
    while @number != @array[@guess] do
      @guess = (@max + @min)/2
      if @number > @array[@guess]
        @min = @guess + 1
      else
        @max = @guess - 1
      end
    end
    @guess
  end
  
end
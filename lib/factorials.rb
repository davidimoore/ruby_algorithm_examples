class Factorials
  def iterative(n)
    result = 1
    for iterator in 1...n  do
      result =  (iterator + 1) * result
    end
    result
  end
end
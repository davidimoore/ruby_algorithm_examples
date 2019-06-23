class ReverseAString
  def self.run(string)
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
end
require 'pry'

class Number_sorter
  
  def initialize()
  end

  def sort_numbers(numbers_array)
    array_length = numbers_array.length
    loop do
    switched = false
      (array_length - 1).times do |index|
        if numbers_array[index] > numbers_array[index + 1]
          numbers_array[index], numbers_array [index + 1] = numbers_array [index + 1], numbers_array [index]
          switched = true
        end
      end
      break unless switched
    end
    return numbers_array
  end

end

number_sorter = Number_sorter.new
numbers_array = [ 1, 77, 6, 23, 5, 67, 123, 54, 2, 13 ]

p number_sorter.sort_numbers(numbers_array)


class StringCalculator

  def add(numbers)
    delimiter = /,|\n/
    numbers_arr = numbers.split(delimiter)
    sum = 0

    numbers_arr.each do |num|
      sum += num.to_i
    end

    sum
  end
end


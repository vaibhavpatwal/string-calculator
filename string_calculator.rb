
class StringCalculator

  def add(numbers)
    delimiter = ','
    numbers_arr = numbers.split(delimiter)
    sum = 0

    numbers_arr.each do |num|
      sum += num.to_i
    end

    p sum
  end
end



class StringCalculator

  def add(numbers)
    delimiter = /[,\n]/

    if numbers.start_with?('//')
      delimiter_line, numbers = numbers.split("\n", 2)
      delimiter = delimiter_line[2..-1]
    end

    numbers_arr = numbers.split(delimiter)
    sum = 0

    is_negative = numbers_arr.any? {|ele| ele.to_i.negative?}

    if is_negative
      raise ArgumentError, "negative numbers are not allowed as arguments: #{numbers_arr.select {|ele| ele.to_i.negative?}.join(',')}"
    end

    numbers_arr.each do |num|
      sum += num.to_i
    end

    sum
  end
end


class StringCalculator
    def add(numbers)
        return 0 if numbers.empty?
        delimiter, numbers = parse_params(number)
        number_array = numbers.split(Regexp.union(delimiter, "\n", ","))
        integers = number_array.map(&:to_i)
        integers.sum
    end

    private

    def parse_params(numbers)
        if numbers.start_with?("//")
          delimiter, numbers = numbers[2..].split("\n", 2)
          [delimiter, numbers]
        else
          [",", numbers]
        end
      end
end
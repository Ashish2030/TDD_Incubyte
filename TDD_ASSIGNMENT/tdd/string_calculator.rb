class StringCalculator
    def add(numbers)
        return 0 if numbers.empty?
        delimiter, numbers = parse_params(numbers)
        number_array = numbers.split(Regexp.union(delimiter, "\n", ","))
        integers = number_array.map(&:to_i)

        negative_numbers = integers.select { |n| n < 0 }
        if negative_numbers.present?
          raise "Negative numbers not allowed: #{negative_numbers.join(', ')}"
        end
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
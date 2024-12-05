class StringCalculator
    def add(numbers)
        return 0 if numbers.empty?
        number_array = numbers.split(",")
        integers = number_array.map(&:to_i)
        integers.sum
    end
end
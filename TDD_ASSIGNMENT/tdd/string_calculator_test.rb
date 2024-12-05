
require_relative 'game.rb'
require 'minitest/autorun'

class StringCalculatorTest < Minitest::Test
    def setup
      @calculator = StringCalculator.new
    end
  
    # Test case empty string input
    def test_empty_string_returns_zero
      assert_equal 0, @calculator.add("")
    end

    # Test case single number input
    def test_single_number_returns_same_number
      assert_equal 1, @calculator.add("1")
    end

    # Test case multiple numbers separated by commas
    def test_multiple_numbers_sum
      assert_equal 6, @calculator.add("1,2,3")
    end

    # Test case numbers separated by newline
    def test_numbers_separated_by_newlines
      assert_equal 6, @calculator.add("1\n2,3")
    end

    def test_custom_delimiter
      assert_equal 3, @calculator.add("//;\n1;2")
      assert_equal 15, @calculator.add("//-\n4-5-6")
      assert_equal 10, @calculator.add("//.\n1.2,3\n4")
    end
  
end
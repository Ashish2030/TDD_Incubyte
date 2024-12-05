
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
end
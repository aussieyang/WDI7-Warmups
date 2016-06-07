require 'minitest/autorun'
require 'minitest/reporters' # optional
require 'minitest/pride'
require './solution/phone_solution'

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new() # optional

class PhoneTest < MiniTest::Test

  def test_cleans_number
    number = Phone.new("(123) 456-7890").number
    assert_equal "1234567890", number
  end

   def test_cleans_number_with_dots

    number = Phone.new("123.456.7890").number
    assert_equal "1234567890", number
  end

  def test_valid_when_11_digits_and_first_is_1
    number = Phone.new("11234567890").number
    assert_equal "1234567890", number
  end

  def test_invalid_when_11_digits
    number = Phone.new("21234567890").number
    assert_equal "0000000000", number
  end

  def test_invalid_when_9_digits
    number = Phone.new("123456789").number
    assert_equal "0000000000", number
  end

  def test_area_code
    number = Phone.new("1234567890")
    assert_equal "123", number.area_code
  end

  def test_pretty_print
    number = Phone.new("1234567890")
    assert_equal "(123) 456-7890", number.to_s
  end
end

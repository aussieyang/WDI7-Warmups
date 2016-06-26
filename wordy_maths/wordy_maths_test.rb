require 'minitest/autorun'
require 'minitest/reporters'
require 'minitest/pride'
require_relative 'wordy_maths'

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new()

class CalcTest < MiniTest::Test

  def test_addition
    calc = Calc.new
    assert_equal 17, calc.ask("What is 12 plus 5?")
  end

  def test_sub
    calc = Calc.new
    assert_equal 7, calc.ask("What is 12 minus 5?")
  end

  def test_mult
    calc = Calc.new
    assert_equal 60, calc.ask("What is 12 multiplied by 5?")
  end

  def test_div
    calc = Calc.new
    assert_equal 2, calc.ask("What is 12 divided by 6?")
  end

  def test_many
    calc = Calc.new
    assert_equal 9, calc.ask("What is 12 divided by 6 plus 9 minus 1 multiplied by 2?")
  end

  def test_neg_num
    calc = Calc.new
    assert_equal 2, calc.ask("What is -12 divided by 6 plus 4?")
  end

  def test_bad_spacing
    calc = Calc.new
    assert_equal 17, calc.ask("What  is 12 plus 5 ?")
  end

  def test_bad_caps
    calc = Calc.new
    assert_equal 17, calc.ask("whAt Is 12 plUS 5 ?")
  end

end

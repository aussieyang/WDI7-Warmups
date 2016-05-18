require 'minitest'
require 'minitest/autorun'
require 'minitest/reporters'
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new
require_relative 'dancode.rb'

class DanTest < MiniTest::Test

  def  setup
    @dan = Dan.new
  end

  def test_checks_upercase_response
    assert_equal 'WOAH CHILL OUT!', @dan.chat('HI DAN')
  end


  def test_checks_for_sure
     assert_equal "Sure.", @dan.chat('Is this a question?')
  end

  def test_checks_for_whatever
    assert_equal "Whatever.", @dan.chat('blah blah blah')
  end

  def test_checks_for_l33t
    assert_equal "bR0, t34cH m3 h0w t0 l33t sP34k", @dan.chat('Bro, teach me how to leet speak')
  end

end

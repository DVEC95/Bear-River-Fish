require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../bear.rb')
require_relative('../river.rb')

class BearTest < MiniTest::Test

  def setup()
    @bear = Bear.new("Yogi", "Grizzly")
    @river = River.new("Amazon", @fish)
  end

  def test_bear_name
    assert_equal("Yogi", @bear.name)
  end

  def test_bear_type
    assert_equal("Grizzly", @bear.type)
  end

  def test_bear_hungry
    assert_equal(0, @bear.bear_hungry)
  end

  def test_eat_fish
    @bear.eat_fish(@fish)
    assert_equal(1, @bear.bear_hungry)
  end

end

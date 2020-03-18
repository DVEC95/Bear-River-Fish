require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../bear.rb')
require_relative('../river.rb')
require_relative('../fish.rb')

class BearTest < MiniTest::Test

  def setup()
    @bear = Bear.new("Yogi", "Grizzly")
    @fish_1 = Fish.new("Salmon")
    @fish_2 = Fish.new("Haddock")
    @fish = [@fish_1, @fish_2]
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
    @bear.eat_fish(@river)
    assert_equal(1, @bear.bear_hungry)
    assert_equal(1, @river.fish_amount)
  end

  def test_roar
    @bear.roar
    assert_equal("Yogi lets out a roar!", @bear.roar)
  end

end

require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../river.rb')
require_relative('../fish.rb')
require_relative('../bear.rb')

class RiverTest < MiniTest::Test

  def setup()
    @fish_1 = Fish.new("Salmon")
    @fish_2 = Fish.new("Haddock")
    @fish = [@fish_1, @fish_2]
    @river = River.new("Amazon", @fish)
    @bear = Bear.new("Yogi", "Grizzly")
  end

  def test_river_name
    assert_equal("Amazon", @river.name)
  end

  def test_fish_amount
    assert_equal(2, @river.fish_amount)
  end

  def test_fish_eaten
    @bear.eat_fish("Salmon")
    @fish.delete_at(1)
    assert_equal(1, @river.fish_amount)
    assert_equal(1, @bear.bear_hungry)
  end

end

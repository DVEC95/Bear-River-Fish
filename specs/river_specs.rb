require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../river.rb')
require_relative('../fish.rb')

class RiverTest < MiniTest::Test

  def setup()
    @river = River.new("Amazon")
    @fish = Fish.new("Salmon", 20)
  end

  def test_river_name
    assert_equal("Amazon", @river.name)
  end

  def test_fish_amount
    assert_equal("Salmon", @fish.name)
  end

  def test_fish_amount
    assert_equal(20, @fish.amount)
  end

end

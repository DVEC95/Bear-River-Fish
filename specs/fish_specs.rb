require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../fish.rb')

class FishTest < MiniTest::Test

  def setup()
    @fish = Fish.new("Salmon", 20)
  end

  def test_fish_name
    assert_equal("Salmon", @fish.name)
  end

  def test_fish_amount
    assert_equal(20, @fish.amount)
  end

end

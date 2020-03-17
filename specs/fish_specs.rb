require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../fish.rb')
require_relative('../river.rb')

class FishTest < MiniTest::Test

  def setup()
    @fish = Fish.new("Salmon")
  end

  def test_fish_name
    assert_equal("Salmon", @fish.type)
  end

end

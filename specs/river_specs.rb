require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../river.rb')

class RiverTest < MiniTest::Test

  def setup()
    @river = River.new("Amazon", 100)
  end

  def test_river_name
    assert_equal("Amazon", @river.name)
  end


end

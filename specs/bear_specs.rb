require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../bear.rb')

class BearTest < MiniTest::Test

  def setup()
    @bear = Bear.new("Yogi", "Grizzly")
  end

end

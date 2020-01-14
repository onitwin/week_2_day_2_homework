require("minitest/autorun")
require("minitest/reporters")
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../fish')
require_relative('../river')
require_relative('../bear')



class FishTest < MiniTest::Test

  def setup
    @fish=Fish.new("Freddy")
  end

  def test_for_name#pass
    assert_equal("Freddy",@fish.name)
  end

















end

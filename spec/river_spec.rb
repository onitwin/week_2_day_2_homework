require("minitest/autorun")
require("minitest/reporters")
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../river')
require_relative('../bear')
require_relative('../fish')



class RiverTest < MiniTest::Test

  def setup
    @river=River.new("Styx")
    @fish=Fish.new("Freddy")
    @bear=Bear.new("Chuck","Polar")
  end

  def test_river_name#passed
    assert_equal("Styx",@river.name)
  end

  def test_river_stock
    assert_equal(0,@river.stock.length)
  end

  def test_increase_river_stock
    assert_equal(0,@river.stock.length)
    @river.increase_stock(@fish)
    assert_equal(1,@river.stock.length)#counts fish- below we have method to count
  end


  def test_count_fish_empty
    assert_equal(0,@river.count_fish)
  end

  def test_count_fish_stocked
    assert_equal(0,@river.count_fish)#check empty
    @river.increase_stock(@fish)#increase by one
    assert_equal(1,@river.count_fish)#check stock level at 1
    @river.increase_stock(@fish)#increase stock a second time by 1
    assert_equal(2,@river.count_fish)#check that increased  by one again
  end



















end

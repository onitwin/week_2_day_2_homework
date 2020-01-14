require("minitest/autorun")
require("minitest/reporters")
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../bear')
require_relative('../river')
require_relative('../fish')



class BearTest < MiniTest::Test

  def setup
    @bear=Bear.new("Grylls","Red Panda")
    @river=River.new("Clyde")
    @fish=Fish.new("Tuna")
  end


  def test_for_name# pass
    assert_equal("Grylls",@bear.name)
  end

  def test_for_species#pass
    assert_equal("Red Panda",@bear.species)
  end

  def test_check_stomach_empty #pass
    assert_equal(0,@bear.stomach.length)
  end

  def test_for_take_fish_from_river
    @river.stock.push(@fish)
    @river.stock.push(@fish)
    @river.stock.push(@fish)
    assert_equal(3,@river.stock.length)
    @bear.take_fish(@river)
    assert_equal(2,@river.stock.length)
    assert_equal(1,@bear.stomach.length)
  end

  def test_for_roar
    assert_equal('RAAAAAAAAAAR',@bear.roar)
  end

  def test_for_count_food
    assert_equal(0,@bear.stomach.length)
    @river.stock.push(@fish)#these are all methods originating
    @river.stock.push(@fish)#in the 'river' class
    @river.stock.push(@fish)#which is stocked with the
    @river.stock.push(@fish)#fish class.
    @river.stock.push(@fish)
    @river.stock.push(@fish)
    @river.stock.push(@fish)
    @river.stock.push(@fish)
    @river.stock.push(@fish)
    assert_equal(9,@river.stock.length)#check 9 fish in river
    @bear.take_fish(@river)#remove 2 fish from river
    @bear.take_fish(@river)#by calling @bear.take_fish twice
    assert_equal(7,@river.stock.length)#check river stock reduced
    #assert(2,@bear.stomach.length)#check bear stomach increased from empty to two
    #above assert passed, so need method to achievd same result
    assert_equal(2,@bear.count_food)
  end





























end

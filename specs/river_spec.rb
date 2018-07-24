require("minitest/autorun")
require("minitest/rg")
require_relative("../river.rb")
require_relative("../fish.rb")

class RiverTest < MiniTest::Test
  def setup
    @river_1 = River.new("Amazon")
    new_fish = Fish.new("Michael")
    @river_1.add_fish(new_fish)
  end

  def test_get_river_name()
    assert_equal("Amazon", @river_1.name())
  end

  def test_add_fish()
    new_fish = Fish.new("Mika")
    @river_1.add_fish(new_fish)
    assert_equal(2, @river_1.count_fish_number())
  end

  def test_remove_fish()
    new_fish = Fish.new("Misoto")
    @river_1.add_fish(new_fish)
    result = @river_1.remove_fish()
    assert_equal(1, @river_1.count_fish_number())
    assert_equal("Misoto", result.name())
  end

end

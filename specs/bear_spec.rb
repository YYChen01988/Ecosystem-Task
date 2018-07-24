require("minitest/autorun")
require("minitest/rg")
require_relative("../bear.rb")
require_relative("../fish.rb")
require_relative("../river.rb")


class BearTest < MiniTest::Test
  def setup
    @bear_1 = Bear.new("Yogi", "Grizzly" )
    @river_G = River.new("Clyde")
    new_fish = Fish.new("Michael")
    @river_G.add_fish(new_fish)
  end

  def test_get_bear_name()
    assert_equal("Yogi", @bear_1.name())
  end

  def test_get_bear_type()
    assert_equal("Grizzly", @bear_1.bear_type())
  end

  def test_bear_eats_fish()

    assert_equal(1, @river_G.count_fish_number())
    @bear_1.bear_eats_fish(@river_G)
    assert_equal(1, @bear_1.eaten_fish_count())

    assert_equal(0, @river_G.count_fish_number())
    @bear_1.bear_eats_fish(@river_G)
    assert_equal(1, @bear_1.eaten_fish_count())

  end

  def test_roar()
    assert_equal("Roar~~, I ate the fish <>< ", @bear_1.roar())
  end



end

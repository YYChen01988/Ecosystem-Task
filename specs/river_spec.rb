require("minitest/autorun")
require("minitest/rg")
require_relative("../river.rb")

class RiverTest < MiniTest::Test
  def setup
    @river_1 = River.new("Amazon", 500)
  end

  def test_get_river_name()
    assert_equal("Amazon", @river_1.name())
  end

  def test_get_fish_number()
    assert_equal(500, @river_1.fish_number())
  end


end

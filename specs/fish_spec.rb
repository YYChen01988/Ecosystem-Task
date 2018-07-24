require("minitest/autorun")
require("minitest/rg")
require_relative("../fish.rb")

class FishTest < MiniTest::Test
  def setup
    @fish_1 = Fish.new("Lucy")
  end
  def test_get_fish_name()
    assert_equal("Lucy", @fish_1.name())
  end
end

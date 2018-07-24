require("minitest/autorun")
require("minitest/rg")
require_relative("../bear.rb")

class BearTest < MiniTest::Test
  def setup
    @bear_1 = Bear.new("Gina", "Panda" )
  end

  def test_get_bear_name()
    assert_equal("Gina", @bear_1.name())
  end

  def test_get_bear_type()
    assert_equal("Panda", @bear_1.bear_type())
  end





end

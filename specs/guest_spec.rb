require("minitest/autorun")
require("minitest/rg")
require_relative("../guest")

class TestGuest < MiniTest::Test
  def setup
    @guest_name = Guest.new("Beyonce")
  end

  def test_guest_name
    assert_equal("Beyonce", @guest_name.guest_name)
  end

  

end

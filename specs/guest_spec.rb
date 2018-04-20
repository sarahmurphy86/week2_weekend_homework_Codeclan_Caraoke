require("minitest/autorun")
require("minitest/rg")
require_relative("../guest")

class TestGuest < MiniTest::Test
  def setup
    @guest = Guest.new("Beyonce")
  end

  def test_guest_name
    assert_equal("Beyonce", @guest.guest_name)
  end



end

require("minitest/autorun")
require("minitest/rg")
require_relative("../guest")
require_relative("../room")


class TestGuest < MiniTest::Test
  def setup
    @guest = Guest.new("Beyonce", 100)
    @room = Room.new("Vegas", 10, @guest, @song, 20, 0)
  end

  def test_guest_name
    assert_equal("Beyonce", @guest.guest_name)
  end

  def test_guest_money
    assert_equal(100, @guest.guest_money)
  end

  def test_guest_pay_for_room
    @guest.pay_for_room(@room)
    assert_equal(80, @guest.guest_money)
  end

end

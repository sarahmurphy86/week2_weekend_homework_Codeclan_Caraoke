require("minitest/autorun")
require("minitest/rg")
require_relative("../guest")

class TestGuest < MiniTest::Test
  def setup
    @guest = Guest.new("Beyonce")
    # @song1 = Song.new("Mama Mia")
  end

  def test_guest_name
    assert_equal("Beyonce", @guest.guest_name)
  end

  # def test_guest_can_choose_song
  #   assert_equal("Mama Mia", @song1.songs)
  # end


end

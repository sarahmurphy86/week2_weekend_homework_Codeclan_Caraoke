require("minitest/autorun")
require("minitest/rg")
require_relative("../room")
require_relative("../song")

class TestRoom < MiniTest::Test

  def setup
    @song1 = Song.new("Mama Mia")
    @song2 = Song.new("Dancing Queen")
    @song3 = Song.new("Waterloo")
    songs = [@song1, @song2, @song3]

    @room = Room.new("Vegas", 10, songs)
  end

  def test_room_name
    assert_equal("Vegas", @room.room_name)
  end

  def test_room_capacity
    assert_equal(10, @room.capacity)
  end

  def test_room_has_songs
    assert_equal(3, @room.songs().length)
  end

end

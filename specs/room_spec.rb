require("minitest/autorun")
require("minitest/rg")
require_relative("../room")
require_relative("../song")
require_relative("../guest")

class TestRoom < MiniTest::Test

  def setup
    @song1 = Song.new("Mama Mia")
    @song2 = Song.new("Dancing Queen")
    @song3 = Song.new("Waterloo")
    @song4 = Song.new("Money Money Money")
    songs = [@song1, @song2, @song3]


    @guest1 = Guest.new("Amanda")
    @guest2 = Guest.new("Carol")
    @guest3 = Guest.new("Sandra")
    @guest4 = Guest.new("Sally")
    people = [@guest1, @guest2, @guest3]
    @room = Room.new("Vegas", 10, people, songs)

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

  def test_room_amount_of_guests
    assert_equal(3, @room.amount_of_guests().length)
  end

  def test_add_a_guest
    @room.add_a_guest(@guest4)
    assert_equal(4, @room.amount_of_guests().length)
  end

  def test_remove_a_guest
    @room.remove_a_guest
    assert_equal(2, @room.amount_of_guests().length)
  end

  def test_add_song_to_room
    @room.add_a_song(@song4)
    assert_equal(4,@room.songs().length)
  end

end

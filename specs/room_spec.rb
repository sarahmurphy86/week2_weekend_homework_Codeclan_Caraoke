require("minitest/autorun")
require("minitest/rg")
require_relative("../room")
require_relative("../song")
require_relative("../guest")

class TestRoom < MiniTest::Test

  def setup
    @song1 = Song.new("Mama Mia", "Abba")
    @song2 = Song.new("Dancing Queen", "Abba")
    @song3 = Song.new("Waterloo", "Abba")
    @song4 = Song.new("Money Money Money", "Abba")
    songs = [@song1, @song2, @song3]

    @guest1 = Guest.new("Beyonce", 100)
    @guest2 = Guest.new("Kylie", 50)
    @guest3 = Guest.new("Madonna", 25)
    @guest4 = Guest.new("Dolly", 150)
    guest_list = [@guest1, @guest2, @guest3]

    @room = Room.new("Vegas", 10, guest_list, songs, 20, 0)
    @room1 = Room.new("Blackpool", 3, guest_list, songs, 6, 0)
  end

  def test_room_name
    assert_equal("Vegas", @room.room_name)
  end

  def test_room_capacity
    assert_equal(10, @room.capacity)
  end

  def test_room_has_songs
    assert_equal(3, @room.songs.count())
  end

  def test_room_guest_list
    assert_equal(3, @room.guest_list.count())
  end

  def test_add_a_guest
    @room.add_a_guest(@guest4)
    assert_equal(4, @room.guest_list.count())
  end

  def test_remove_a_guest
    @room.remove_a_guest
    assert_equal(2, @room.guest_list.count())
  end

  def test_add_song_to_room
    @room.add_a_song(@song4)
    assert_equal(4,@room.songs.count())
  end

# What happens if there are more guests trying to be checked in than there is free space in the room?

  def test_add_guest_to_full_room
    @room1.add_a_guest(@guest4)
    assert_equal(@room1.capacity, @room1.guest_list.count())
  end

# Karaoke venues usually have an entry fee - So the guests could have money so they can pay it.
  def test_entry_fee
    assert_equal(6, @room1.entry_fee)
  end

  def test_empty_till
    assert_equal(0, @room1.till)
  end

  # def test_till_increases
  #   @room.till_increases(@room.entry_fee)
  #   assert_equal(20, @room.till)
  # end

  # I added this in as I wanted to see if I could add 20 to an empty till - the method is method_4 in room.rb

  def test_till_increases
    @room.till_increases(@guest1, @room)
    assert_equal(80, @guest1.guest_money)
    assert_equal(20, @room.till)
  end

end

require("minitest/autorun")
require("minitest/rg")
require_relative("../song")

class SongTest < MiniTest::Test
  def setup
    @song = Song.new("Mama Mia", "Abba")
  end

  def test_song_title
    assert_equal("Mama Mia", @song.song_title)
  end

  def test_song_artist
    assert_equal("Abba", @song.song_artist)
  end

end

require("minitest/autorun")
require("minitest/rg")
require_relative("../song")

class SongTest < MiniTest::Test
  def setup
    @song = Song.new("Mama Mia")
  end

  def test_song_title
    assert_equal("Mama Mia", @song.song_title)
  end

end

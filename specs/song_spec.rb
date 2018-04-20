require("minitest/autorun")
require("minitest/rg")
require_relative("../song")

class TestSong < MiniTest::Test
  def setup
    @song = Song.new("Mama Mia")
  end

  def test_song_name
    assert_equal("Mama Mia", @song.name)
  end

end

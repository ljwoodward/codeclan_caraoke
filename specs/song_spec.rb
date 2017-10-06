require("minitest/autorun")
require("minitest/rg")
require_relative("../song.rb")

class TestSong < MiniTest::Test

  def setup()
    @song1 = Song.new("Total Eclipse of the Heart", "Bonnie Tyler")
  end

  def test_get_title()
    assert_equal(@song1.title(), "Total Eclipse of the Heart")
  end

  def test_get_artist()
    assert_equal(@song1.artist(), "Bonnie Tyler")
  end


end

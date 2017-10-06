require("minitest/autorun")
require("minitest/rg")
require_relative("../room.rb")
require_relative("../song.rb")

class TestRoom < MiniTest::Test

  def setup()
    @room1 = Room.new("The Croon Room")
    @song1 = Song.new("Total Eclipse of the Heart", "Bonnie Tyler")
  end

  def test_get_room_name
    assert_equal(@room1.name, "The Croon Room")
  end

  def test_add_song_to_room
    @room1.add_song(@song1)
    assert_equal(@room1.songs.length(), 1)
  end
end

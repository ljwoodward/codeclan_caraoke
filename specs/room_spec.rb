require("minitest/autorun")
require("minitest/rg")
require_relative("../room.rb")
require_relative("../song.rb")
require_relative("../guest.rb")
require("pry")

class TestRoom < MiniTest::Test

  def setup()
    @room1 = Room.new("The Croon Room")
    @song1 = Song.new("Total Eclipse of the Heart", "Bonnie Tyler")
    @guest1 = Guest.new("Gunther")
  end

  def test_get_room_name
    assert_equal(@room1.name, "The Croon Room")
  end

  def test_add_song_to_room
    @room1.add_song(@song1)
    assert_equal(@room1.songs.length(), 1)
  end

  def test_check_in_guest
    @room1.check_in_guest(@guest1)
    assert_equal(@room1.guests.length(), 1)
  end


end

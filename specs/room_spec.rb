require("minitest/autorun")
require("minitest/rg")
require_relative("../room.rb")
require_relative("../song.rb")
require_relative("../guest.rb")
require("pry")

class TestRoom < MiniTest::Test

  def setup()
    @room1 = Room.new("Horrorshow")
    @song1 = Song.new("Total Eclipse of the Heart", "Bonnie Tyler")
    @song2 = Song.new("Bat out of Hell", "Meatloaf")
    @guest1 = Guest.new("Gunther", 50, "Bat out of Hell")
    @guest2 = Guest.new("Rudyard", 30, "Come on Eileen")
    @guest3 = Guest.new("Boutros", 9, "Walk This Way")


  end

  def test_get_room_name
    assert_equal(@room1.name, "Horrorshow")
  end

  def test_add_song_to_room
    @room1.add_song(@song1)
    assert_equal(@room1.songs().length(), 1)
  end

  def test_check_in_guest
    @room1.check_in_guest(@guest1)
    assert_equal(@room1.guests().length(), 1)
  end

  def test_check_out_guest
    @room1.check_in_guest(@guest1)
    @room1.check_in_guest(@guest2)

    @room1.check_out_guest(@guest1)
    assert_equal(@room1.guests().count(), 1)
  end

  def test_room_is_full
    @room1.check_in_guest(@guest1)
    @room1.check_in_guest(@guest2)
    result = @room1.check_in_guest(@guest3)
    assert_equal(result, "Sorry, room is full")
  end

  def test_guest_paid__can_afford
    @room1.check_in_guest(@guest1)
    assert_equal(@guest1.money, 40)
    assert_equal(@room1.takings, 10)
  end

  def test_guest_paid__cannot_afford
    result = @room1.check_in_guest(@guest3)
    assert_equal(result, "Insufficient funds")
    assert_equal(@room1.takings, 0)
  end

  def test_favourite_song
    @room1.add_song(@song1)
    @room1.add_song(@song2)
    @room1.check_in_guest(@guest1)
    result = @room1.check_favourite(@guest1)
    assert_equal(result, "Yes! My favourite song!")
  end


end

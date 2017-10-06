require("minitest/autorun")
require("minitest/rg")
require_relative("../room.rb")

class TestRoom < MiniTest::Test

  def setup()
    @room1 = Room.new("The Croon Room")
  end

  def test_get_room_name
    assert_equal(@room1.name, "The Croon Room")
  end

  
end

require("minitest/autorun")
require("minitest/rg")
require_relative("../guest.rb")

class TestGuest < MiniTest::Test

  def setup()
    @guest1 = Guest.new("Gunther")
  end

  def test_get_guest_name()
    assert_equal(@guest1.name, "Gunther")
  end


end

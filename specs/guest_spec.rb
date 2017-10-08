require("minitest/autorun")
require("minitest/rg")
require_relative("../guest.rb")

class TestGuest < MiniTest::Test

  def setup()
    @guest1 = Guest.new("Gunther", 50)
  end



end

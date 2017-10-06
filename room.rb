class Room

  attr_reader :name

  def initialize(name)
    @name = name
    @guests = Array.new
    @songs = Array.new 
  end

end

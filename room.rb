class Room

  attr_reader(:name, :songs, :guests)

  def initialize(name)
    @name = name
    @guests = Array.new
    @songs = Array.new
  end

  def add_song(song)
    @songs << song
  end

  def check_in_guest(guest)
    @guests << guest
  end


end

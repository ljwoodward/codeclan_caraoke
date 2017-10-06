class Room

  attr_reader(:name, :songs)

  def initialize(name)
    @name = name
    @guests = Array.new
    @songs = Array.new
  end

  def add_song(song)
    @songs << song
  end


end

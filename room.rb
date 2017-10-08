class Room

  attr_reader(:name, :songs, :guests)

  def initialize(name)
    @name = name
    @guests = Array.new
    @songs = Array.new
    @room_size = 2
  end

  def add_song(song)
    @songs << song
  end

  def check_in_guest(guest)
    if @guests.count() >= @room_size
      return "Sorry, room is full"
    else
      @guests << guest
    end
  end

  def check_out_guest(guest)
    @guests.delete(guest)
  end

  def room_is_full

  end


end

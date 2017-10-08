class Room

  attr_reader(:name, :songs, :guests, :takings)

  def initialize(name)
    @name = name
    @guests = Array.new
    @songs = Array.new
    @room_size = 2
    @price = 10
    @takings = 0
  end

  def add_song(song)
    @songs << song
  end

  def check_in_guest(guest)
    if @guests.count() >= @room_size
      return "Sorry, room is full"
    elsif guest.money > @price
      @guests << guest
      guest.money -= @price
      @takings += @price
    else
      return "Insufficient funds"
    end
  end

  def check_out_guest(guest)
    @guests.delete(guest)
  end

  def check_favourite(guest)
    song_names = @songs.map {|song| song.title}
    if song_names.include?(guest.favourite_song())
      return "Yes! My favourite song!"
    end

  end


end

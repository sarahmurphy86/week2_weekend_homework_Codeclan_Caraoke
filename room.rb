class Room

attr_reader :room_name, :capacity
attr_accessor :songs, :amount_of_guests

  def initialize(room_name, capacity, amount_of_guests, songs)
    @room_name = room_name
    @capacity = capacity
    @amount_of_guests = amount_of_guests
    @songs = songs
  end

  def add_a_guest(guest)
    amount_of_guests.push(guest)
  end

  def remove_a_guest
    amount_of_guests.pop
  end

  def add_a_song(song)
    songs.push(song)
  end


end

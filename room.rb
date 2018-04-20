class Room

attr_reader :room_name, :capacity
attr_accessor :songs

def initialize(room_name, capacity, songs)
  @room_name = room_name
  @capacity = capacity
  # @amount_of_guest = amount_of_guests
  @songs = songs
end

end

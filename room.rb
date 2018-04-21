class Room

attr_reader :room_name, :capacity, :songs, :guest_list

# attr_accessor :guest_list

  def initialize(room_name, capacity, guest_list, songs)
    @room_name = room_name
    @capacity = capacity
    @guest_list = guest_list
    @songs = songs
  end

  # def add_a_guest(guest)
  #    guest_list.push(guest)
  # end

  def remove_a_guest
    guest_list.pop
  end

  def add_a_song(song)
    songs.push(song)
  end

  def add_a_guest(guest)
     if capacity > guest_list().count
       guest_list.push(guest)
     else
       p "Sorry no space in #{@room_name}"
     end
  end

end

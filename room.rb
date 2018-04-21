class Room

attr_reader :room_name, :capacity, :songs, :guest_list, :entry_fee, :till

# attr_accessor :guest_list

  def initialize(room_name, capacity, guest_list, songs, entry_fee, till)
    @room_name = room_name
    @capacity = capacity
    @guest_list = guest_list
    @songs = songs
    @entry_fee = entry_fee
    @till = till
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

  # def till_increases(entry_fee)
  #   @till += entry_fee
  # end
# I have commented this out (method_4) as it is no longer needed.
# **ask why @till and not till?**

  def till_increases(guest,room)
    guest.pay_for_room(room)
    @till += entry_fee
  end

end

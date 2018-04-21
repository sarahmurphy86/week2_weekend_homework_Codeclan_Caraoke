class Guest

attr_reader :guest_name, :guest_money

  def initialize(guest_name, guest_money)
    @guest_name = guest_name
    @guest_money = guest_money
  end

  def pay_for_room(room)
    @guest_money -= room.entry_fee
  end

end

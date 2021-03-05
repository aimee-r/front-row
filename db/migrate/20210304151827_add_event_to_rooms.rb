class AddEventToRooms < ActiveRecord::Migration[6.0]
  def change
    add_reference :rooms, :event
  end
end

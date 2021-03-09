class AddRoomRefToChatroom < ActiveRecord::Migration[6.0]
  def change
   add_reference :chatrooms, :room, foreign_key: true
  end
end

class AddCheckOutSessionIdToEventAttendee < ActiveRecord::Migration[6.0]
  def change
    add_column :event_attendees, :vonage_session_id, :string
  end
end

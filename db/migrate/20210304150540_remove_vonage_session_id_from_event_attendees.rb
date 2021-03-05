class RemoveVonageSessionIdFromEventAttendees < ActiveRecord::Migration[6.0]
  def change
    remove_column :event_attendees, :vonage_session_id
  end
end

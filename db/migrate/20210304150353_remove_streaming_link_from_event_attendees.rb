class RemoveStreamingLinkFromEventAttendees < ActiveRecord::Migration[6.0]
  def change
    remove_column :event_attendees, :streaming_link
  end
end

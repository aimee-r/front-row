class CreateEventAttendees < ActiveRecord::Migration[6.0]
  def change
    create_table :event_attendees do |t|
      t.string :streaming_link
      t.references :user, null: false, foreign_key: true
      t.references :event, null: false, foreign_key: true

      t.timestamps
    end
  end
end

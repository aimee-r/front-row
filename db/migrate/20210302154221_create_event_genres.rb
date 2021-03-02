class CreateEventGenres < ActiveRecord::Migration[6.0]
  def change
    create_table :event_genres do |t|
      t.references :event, null: false, foreign_key: true
      t.references :genre, null: false, foreign_key: true

      t.timestamps
    end
  end
end

class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.string :event_name
      t.text :description
      t.integer :price_cents
      t.datetime :start_time
      t.datetime :end_time
      t.string :city
      t.string :country

      t.timestamps
    end
  end
end

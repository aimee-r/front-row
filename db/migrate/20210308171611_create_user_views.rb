class CreateUserViews < ActiveRecord::Migration[6.0]
  def change
    create_table :user_views do |t|
      t.string :code
      t.string :country
      t.string :city
      t.string :postal
      t.string :lat
      t.string :long
      t.string :ip
      t.string :state
      t.integer :event_id
      t.string :page

      t.timestamps
    end
  end
end

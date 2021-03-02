class AddingDefaultFalseToBoolean < ActiveRecord::Migration[6.0]
  def change
    change_column :users, :artist, :boolean, default: false
  end
end

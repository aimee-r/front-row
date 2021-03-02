class AddAttributesToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :nationality, :string
    add_column :users, :dob, :date
    add_column :users, :artist, :boolean
  end
end

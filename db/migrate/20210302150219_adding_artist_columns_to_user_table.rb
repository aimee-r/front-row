class AddingArtistColumnsToUserTable < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :artist_name, :string
    add_column :users, :bio, :text
    add_column :users, :bank_details, :string
    add_column :users, :facebook, :string
    add_column :users, :instergram, :string
    add_column :users, :twitter, :string
    add_column :users, :spotify, :string
  end
end

class AddGenresToEvent < ActiveRecord::Migration[6.0]
  def change
    add_column :events, :genres, :text, array: true, default: []
  end
end

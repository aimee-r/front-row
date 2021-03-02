class RemoveGenresFromEvent < ActiveRecord::Migration[6.0]
  def change
    remove_column :events, :genres
  end
end

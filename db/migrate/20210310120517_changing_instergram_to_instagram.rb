class ChangingInstergramToInstagram < ActiveRecord::Migration[6.0]
  def change
    rename_column :users, :instergram, :instagram
  end
end

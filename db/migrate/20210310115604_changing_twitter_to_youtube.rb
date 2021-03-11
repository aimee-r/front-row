class ChangingTwitterToYoutube < ActiveRecord::Migration[6.0]
  def change
    rename_column :users, :twitter, :youtube
  end
end

class ChangingNationalityToLocation < ActiveRecord::Migration[6.0]
  def change
    rename_column :users, :nationality, :location
  end
end

class ChaningUserIdOnEventsTableToKey < ActiveRecord::Migration[6.0]
  def change
    remove_column :events, :user_id
    add_reference :events, :user, foreign_key: true
  end
end

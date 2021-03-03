class RemovePriceCentsFromEvents < ActiveRecord::Migration[6.0]
  def change
    remove_column :events, :price_cents
  end
end

class AddSkuToEvent < ActiveRecord::Migration[6.0]
  def change
    add_column :events, :sku, :string
  end
end

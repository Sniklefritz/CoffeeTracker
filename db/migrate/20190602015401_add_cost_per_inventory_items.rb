class AddCostPerInventoryItems < ActiveRecord::Migration[5.2]
  def change
    add_column :inventory_items, :cost_per, :decimal, :precision => 5, :scale => 3
  end
end

class InventoryAmount < ActiveRecord::Migration[5.2]
  def change
    add_column :inventory_item, :amount, :integer
  end
end

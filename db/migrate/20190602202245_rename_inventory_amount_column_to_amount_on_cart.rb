class RenameInventoryAmountColumnToAmountOnCart < ActiveRecord::Migration[5.2]
  def change
    rename_column :inventory_items, :amount, :amount_on_cart
  end
end

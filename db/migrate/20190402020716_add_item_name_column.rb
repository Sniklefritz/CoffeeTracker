class AddItemNameColumn < ActiveRecord::Migration[5.2]
  def change
    add_column :inventory_items, :item_name, :string
  end
end

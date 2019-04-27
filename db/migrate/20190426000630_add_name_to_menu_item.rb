class AddNameToMenuItem < ActiveRecord::Migration[5.2]
  def change
    add_column :menu_items, :product_name, :string
  end
end

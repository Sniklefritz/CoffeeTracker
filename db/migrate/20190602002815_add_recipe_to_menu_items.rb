class AddRecipeToMenuItems < ActiveRecord::Migration[5.2]
  def change
    add_column :menu_items, :recipe, :JSON
  end
end

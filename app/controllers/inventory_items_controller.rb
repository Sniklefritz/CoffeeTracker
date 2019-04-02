class InventoryItemsController < ApplicationController
  def new
  end

  def create
    @inventory_item = InventoryItem.new(inventory_item_params)

    @inventory_item.save
    redirect_to @inventory_item
  end

  private
  def inventory_item_params
    params.require(:inventory_item).permit(:item_name, :amount)
  end
end

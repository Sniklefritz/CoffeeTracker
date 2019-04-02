class InventoryItemsController < ApplicationController
  def index
    @inventory_items = InventoryItem.all
  end

  def new
  end

  def create
    @inventory_item = InventoryItem.new(inventory_item_params)

    @inventory_item.save
    redirect_to @inventory_item
  end

  def show
    @inventory_item = InventoryItem.find(params[:id])
  end

  private
  def inventory_item_params
    params.require(:inventory_item).permit(:item_name, :amount)
  end
end

class InventoryItemsController < ApplicationController
  def index
    @inventory_items = InventoryItem.all
  end

  def edit
    @inventory_item = InventoryItem.find(params[:id])

    if @inventory_item.update(inventory_item_params)
      redirect_to @inventory_item
    else
      render 'edit'
    end
  end

  def new
    @inventory_item = InventoryItem.new
  end

  def create
    @inventory_item = InventoryItem.new(inventory_item_params)

    if @inventory_item.save
      redirect_to @inventory_item
    else
      render 'new'
    end
  end

  def show
    @inventory_item = InventoryItem.find(params[:id])
  end

  private
  def inventory_item_params
    params.require(:inventory_item).permit(:item_name, :amount)
  end
end

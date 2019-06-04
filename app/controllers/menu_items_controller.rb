class MenuItemsController < ApplicationController
  def index
    @menu_items = MenuItem.all
  end

  def new
    @menu_item = MenuItem.new
  end

  def create
    @menu_item = MenuItem.new(menu_item_params)

    if @menu_item.save
      redirect_to @menu_item
    else
      render 'new'
    end
  end

  def show
    @menu_item = MenuItem.find(params[:id])
  end

  private
  def menu_item_params
    params.require(:menu_item).permit(:product_name, :required_recipe_items, :recipe_item_amount)
  end
end

class MenuItemsController < ApplicationController
  def new
    @menu_item = MenuItem.new
  end
end

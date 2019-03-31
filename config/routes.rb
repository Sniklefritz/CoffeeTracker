Rails.application.routes.draw do
  get 'inventory_item/index'

  root 'home#index'
end

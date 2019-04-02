Rails.application.routes.draw do
  get 'inventory_item/index'

  resources :inventory_items

  root 'home#index'
end

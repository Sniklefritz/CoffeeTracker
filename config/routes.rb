Rails.application.routes.draw do
  get 'inventory_item/index'

  resources :inventory_item

  root 'home#index'
end

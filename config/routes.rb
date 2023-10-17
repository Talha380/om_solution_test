Rails.application.routes.draw do
  devise_for :users
  root "items#index"

  resources :order_items
  resources :orders
end

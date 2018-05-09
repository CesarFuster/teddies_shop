Rails.application.routes.draw do
  devise_for :users
  root 'teddies#index'

  resources :teddies, only: [:index, :show]
  resources :orders, only: [:show, :create] do
    resources :payments, only: [:new, :create]
  end

  resource :cart, only: [:show]
  resources :order_items, only: [:create, :update, :destroy]

end



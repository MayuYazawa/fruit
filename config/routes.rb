Rails.application.routes.draw do
  namespace :user do
    get 'cart_items/index'
    get 'cart_items/create'
    get 'cart_items/update'
    get 'cart_items/destroy'
    get 'cart_items/destroy_all'
  end
  namespace :user do
    get 'users/show'
    get 'users/edit'
    get 'users/update'
    get 'users/quit'
    get 'users/withdraw'
  end
  namespace :user do
    get 'deliveries/index'
    get 'deliveries/edit'
    get 'deliveries/create'
    get 'deliveries/update'
    get 'deliveries/destroy'
  end
  namespace :user do
    get 'homes/top'
    get 'homes/about'
  end
  namespace :user do
    get 'items/index'
    get 'items/show'
  end
  namespace :user do
    get 'orders/new'
    get 'orders/confirm'
    get 'orders/comolete'
    get 'orders/create'
    get 'orders/index'
    get 'orders/show'
  end
  namespace :public do
    get 'cart_items/index'
    get 'cart_items/create'
    get 'cart_items/update'
    get 'cart_items/destroy'
    get 'cart_items/destroy_all'
  end
  namespace :public do
    get 'users/show'
    get 'users/edit'
    get 'users/update'
    get 'users/quit'
    get 'users/withdraw'
  end
  namespace :public do
    get 'deliveries/index'
    get 'deliveries/edit'
    get 'deliveries/create'
    get 'deliveries/update'
    get 'deliveries/destroy'
  end
  namespace :public do
    get 'orders/new'
    get 'orders/confirm'
    get 'orders/complete'
    get 'orders/create'
    get 'orders/index'
    get 'orders/show'
  end
  namespace :admin do
    get 'users/index'
    get 'users/show'
    get 'users/edit'
    get 'users/update'
  end
  namespace :admin do
    get 'order_details/show'
    get 'order_details/update'
  end
  namespace :admin do
    get 'orders/index'
    get 'orders/show'
    get 'orders/update'
  end
  devise_for :users
  namespace :admin do
    get 'items/new'
    get 'items/create'
    get 'items/index'
    get 'items/show'
    get 'items/edit'
    get 'items/update'
  end
  namespace :admin do
    get 'genres/index'
    get 'genres/create'
    get 'genres/edit'
    get 'genres/update'
  end
  namespace :admin do
    get 'customers/index'
    get 'customers/show'
    get 'customers/edit'
    get 'customers/update'
  end
  namespace :public do
    get 'homes/top'
    get 'homes/about'
  end
  namespace :admin do
    get 'homes/top'
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

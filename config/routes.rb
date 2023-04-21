Rails.application.routes.draw do
  
  devise_for :users, controllers: {
    registrations: "user/registrations",
    sessions: 'user/sessions'
  }
  
  devise_for :admin, controllers: {
    sessions: "admin/sessions"
  }
  
  # 会員側のルーティング設定
  scope module: :user do
    root to: "homes#top"
    get "about" => "homes#about"

    resources :items, only: [:index,:show]
    # resources :customers, only: [:edit,:show] 今回はいらない　アンスクライブをクワイトに統一
    get "/users/my_page" => "users#show"
    get 'users/information/edit' => 'users#edit'
    patch 'users/information' => 'users#update'
    get 'users/quit' => 'users#quit'
    patch 'users/withdraw' => 'users#withdraw'

    resources :cart_items do
      member do
        delete "destroy_all"
      end
    end
    get "/orders/complete" => "orders#complete"
    resources :orders, only: [:new,:index,:show,:create]
    post "/orders/confirm" => "orders#confirm"
    resources :deliveries, only: [:index, :create, :edit, :update, :destroy]
  end
  
  # 管理者側のルーティング設定
  namespace :admin do
    get "" => "orders#index"

    resources :items, only: [:new,:index,:create,:show,:edit,:update]
    resources :genres, only: [:index,:create,:edit,:update]
    resources :users, only: [:index,:show,:edit,:update]
    resources :orders, only: [:show, :update]
    resources :order_details, only:[:update]

  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

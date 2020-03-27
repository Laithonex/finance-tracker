Rails.application.routes.draw do
  # get 'friendships/create'
  # get 'friendships/destroy'
  devise_for :users 
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'welcome#index'
  get 'my_portofolio', to: 'users#my_portfolio'
  get 'search_stock', to: 'stocks#search'
  get 'my_friends', to: 'users#my_friends'
  get 'search_friend', to: 'users#search'
  resources :friendships, only: [:create, :destroy]
  resources :user_stocks, only: [:create, :destroy]


end

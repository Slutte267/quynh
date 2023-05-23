require 'sidekiq/web'

Rails.application.routes.draw do
  get 'bloom_beauty/home'
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :orders
  resources :products
  resources :product_categories
  resources :customers
  resources :suppliers
    authenticate :user, lambda { |u| u.admin? } do
      mount Sidekiq::Web => '/sidekiq'
    end


  devise_for :users
  root to: 'bloom_beauty#home'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end

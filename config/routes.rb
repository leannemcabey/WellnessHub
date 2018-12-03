Rails.application.routes.draw do
  resources :user_intentions, only: [:destroy]
  resources :user_posts, only: [:create]
  resources :post_categories, only: [:create]
  resources :posts
  # resources :categories
  resources :users, only: [:show, :new, :create, :edit, :update, :destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

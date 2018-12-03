Rails.application.routes.draw do
  resources :user_intentions
  resources :user_posts
  resources :post_categories
  resources :posts
  resources :categories
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

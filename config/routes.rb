Rails.application.routes.draw do
  resources :intentions, only: [:new, :create, :edit, :update, :destroy]
  resources :user_posts, only: [:create]
  resources :post_categories, only: [:create]
  resources :posts
  # resources :categories
  resources :users, only: [:show, :new, :create, :edit, :update, :destroy]
  get '/signin', to: 'sessions#new'
  post '/signin', to: 'sessions#create_then_user'
  post '/signin_to_posts', to: 'sessions#create_then_posts'
  patch '/change_intention_status/:id', to: 'intentions#change_status', as: 'change_intention_status'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

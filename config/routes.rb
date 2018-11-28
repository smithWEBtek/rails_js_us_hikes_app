Rails.application.routes.draw do

  root 'welcome#home'

  get '/signup', to: 'users#new', as: 'signup'
  get '/login', to: 'sessions#new', as: 'login'
  post '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy', as: 'logout'
  get '/auth/facebook/callback', to: 'sessions#create'
  get 'hikes/with_comments', to: 'hikes#with_comments'

  resources :users, only: [:new, :create, :show] do
    resources :hikes, only: [:index, :new, :create, :show]
  end

  resources :hikes, only: [:show, :edit, :update, :destroy] do
    resources :comments
  end
end

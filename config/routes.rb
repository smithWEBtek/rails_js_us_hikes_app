Rails.application.routes.draw do

  root 'welcome#home'

  get '/signup', to: 'users#new'
  get '/login', to: 'sessions#new', :as => :login
  post '/login', to: 'sessions#create'
  post '/logout', to: 'sessions#destroy'
  
  get '/auth/facebook/callback', to: 'sessions#create'
  get 'hikes/with_comments', to: 'hikes#with_comments'
  
  resources :hikes do
    resources :comments
  end
  
  resources :users
  resources :hikes
  resources :comments
end

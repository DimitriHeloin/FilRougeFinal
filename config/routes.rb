DeviseExample::Application.routes.draw do

 
  devise_for :users, :admins
  resources :projects
  resources :users

  get '/token' => 'home#token', as: :token

  resources :home, only: :index
  resources :admins, only: :index

  root 'home#index'

  get '/recherche' => 'users#recherche'
  get 'users_path', to: 'users#index'

end

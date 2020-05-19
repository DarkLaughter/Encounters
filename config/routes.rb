Rails.application.routes.draw do
  resources :comments
  resources :encounters
  resources :appearances
  resources :cryptids
  resources :users

  get '/', to: 'sessions#home', as: 'home'
  get '/login', to: 'sessions#new', as: 'login'
  post '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

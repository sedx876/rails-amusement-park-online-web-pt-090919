Rails.application.routes.draw do
  root "statics#home"
  resources :users
  resources :rides
  resources :attractions
  get '/signin', to: 'sessions#signin'
  post '/signin', to: 'sessions#create'
  post '/logout' => 'sessions#destroy'
  get '/logout', to: 'sessions#destroy'
end

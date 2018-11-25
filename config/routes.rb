Rails.application.routes.draw do
  get 'sessions/new'
  get 'users/new'
  get 'users/show'

  root to: 'application#redirect_to_login'

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users

end

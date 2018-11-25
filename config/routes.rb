Rails.application.routes.draw do
  get 'sessions/new'
  get 'users/new'

  root to: 'application#redirect_to_login'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users

end

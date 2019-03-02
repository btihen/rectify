Rails.application.routes.draw do
  resources :stories
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/landing',       as: 'landing',       to: 'landings#index'

  resources :stories

  root to: 'landings#index'

end

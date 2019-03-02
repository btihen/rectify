Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/landing',       as: 'landing',       to: 'landings#index'

  root to: 'landings#index'

end

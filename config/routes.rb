Rails.application.routes.draw do
  resources :articles
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/landing',       as: 'landing',       to: 'landings#index'

  get '/articles',  as: 'articles_mine',
                    to: 'articles#my_articles',
                    constraints: { query_string: /list=my_articles/ }
  get '/articles',  as: 'articles_search',
                    to: 'articles#search',
                    constraints: { query_string: /search=/ }
  resources :articles

  root to: 'landings#index'

end

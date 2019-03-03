class ArticlesMineContraint
  def matches?(request)
binding.pry
    request.query_parameters['show'].eql? 'my_articles'
    # request.query_parameters['list'].to_s.include? 'sponsored'
  end
end

Rails.application.routes.draw do
  resources :articles
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/landing',       as: 'landing',       to: 'landings#index'

  # get '/articles/mine', as: 'articles_mine', to: 'articles#mine'
  get '/articles',      as: 'articles_find',
                        to: 'articles#find',
                        constraints: { query_string: /find/ }
  # get '/articles',      as: 'articles_find',
  #                       to: 'articles#find',
  #                       constraints: ArticlesMineContraint.new
  resources :articles

  root to: 'landings#index'

end

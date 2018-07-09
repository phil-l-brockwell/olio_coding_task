Rails.application.routes.draw do
  resource :articles, only: [:index]
  resource :likes, only: [:create]

  root to: 'articles#index'
end

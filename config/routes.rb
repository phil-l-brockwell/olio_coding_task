Rails.application.routes.draw do
  resource :article, only: [:index]

  root to: 'articles#index'
end

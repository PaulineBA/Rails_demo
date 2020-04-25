Rails.application.routes.draw do
  devise_for :models
  get 'articles/index'
 root controller: :articles, action: :index
 resources :articles, only: [:index, :show, :new, :create]

end

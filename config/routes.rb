Rails.application.routes.draw do
  devise_for :models
  get 'articles/index'
  delete 'models/sign_out', to: 'devise/sessions#destroy'
 root controller: :articles, action: :index
 resources :articles
end

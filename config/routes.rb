Rails.application.routes.draw do
  devise_for :users
  get 'threds/index'

  resources :threds
  root to: "threds#index"
end

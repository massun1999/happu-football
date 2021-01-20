Rails.application.routes.draw do
  devise_for :users
  get 'threds/index'

  resources :threds
  delete 'threds/:id' => 'threds#destroy'
  root to: "threds#index"
end

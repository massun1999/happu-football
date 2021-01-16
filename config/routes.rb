Rails.application.routes.draw do
  devise_for :users
  get 'threds/index'
  root to: "threds#index"
end

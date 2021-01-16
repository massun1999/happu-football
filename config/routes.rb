Rails.application.routes.draw do
  get 'threds/index'
  root to: "threds#index"
end

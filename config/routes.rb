Rails.application.routes.draw do
  devise_for :users
  get 'threds/index'

  resources :threds
  delete 'threds/:id' => 'threds#destroy'

  resources :columns
  root to: "threds#index"

  resources :schedules do
    collection do
      post :import
    end
  end
end

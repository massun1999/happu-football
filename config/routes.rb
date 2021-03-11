Rails.application.routes.draw do
  devise_for :users
  get 'top/index'

  resources :threds
  delete 'threds/:id' => 'threds#destroy'

  resources :columns
  root to: "top#index"

  resources :schedules do
    collection do
      post :import
    end
  end
end

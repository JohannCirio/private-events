Rails.application.routes.draw do
  root to: 'events#index'
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users, only: [:show] do
    resources :events, only: [:new, :create]
  end
  resources :events, only: [:index, :show]
end

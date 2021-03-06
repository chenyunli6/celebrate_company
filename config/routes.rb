Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'dashboard#index'
  resources :members, only: [:new, :create]
  namespace :admin do
    resources :members, only: [:index]
  end
end

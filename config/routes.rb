Rails.application.routes.draw do

  resources :payments, only: [:new, :create]
  get 'payments-thanks', to: 'payments#thanks', as: 'payments_thanks'

  resources :posts
  resources :charges, only: [:new, :create]
  get 'thanks', to: 'charges#thanks', as: 'thanks'

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  root to: "posts#index"
end

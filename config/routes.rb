Rails.application.routes.draw do
  resources :galaxyexplorers
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "pages#home"
  resources :planets do
    resources :bookings, only: %i[new create]
  end
  get 'thanks', to: 'pages#thanks'
  get 'payment', to: 'pages#payment'
end

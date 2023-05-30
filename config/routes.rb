Rails.application.routes.draw do
  devise_for :users
  root to: "planets#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "pages#home"
  resources :planets
end

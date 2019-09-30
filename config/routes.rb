Rails.application.routes.draw do
  get "/", to: "static#index", as: "root"

  get "register", to: "users#new", as: "new_user"
  post "register", to: "users#create"

  get "login", to: "sessions#index", as: "login"
  post "login", to: "sessions#login"
  get "logout", to: "sessions#logout"

  get "items", to: "items#index", as: "items"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

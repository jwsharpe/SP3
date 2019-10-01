Rails.application.routes.draw do
  get "/", to: "static#index", as: "root"

  get "register", to: "users#new", as: "new_user"
  post "register", to: "users#create"

  get "login", to: "sessions#index", as: "login"
  post "login", to: "sessions#login"
  get "logout", to: "sessions#logout"

  get "items", to: "items#index", as: "items"
  get "items/:id", to: "items#show", as: "item"
  post "items/:id/add_to_cart", to: "items#add_to_cart", as: "add_to_cart"

  get "cart", to: "carts#show", as: "cart"
  post "cart/clear", to: "carts#delete", as: "clear_cart"

  get "users/:id", to: "users#show", as: "user"

  get "builds", to: "builds#index", as: "builds"
  get "users/:id/builds/", to: "builds#private_index", as: "user_builds"
  get "users/:id/:build_id", to: "builds#show", as: "build"
  get "builds/new", to: "builds#new", as: "new_build"
  get "users/:id/:build_id", to: "builds#edit", as: "edit_build"
  post "builds", to: "builds#create"
  delete "users/:id/:build_id", to: "builds#delete"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

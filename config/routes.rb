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
  delete "items/:id/remove_from_cart", to: "items#remove_from_cart", as: "remove_item_from_cart"
  post "items/:id/add_to_build", to: "items#add_to_build", as: "add_to_build"
  post "items/:build_id", to: "items#add_build_to_cart", as: "add_build_to_cart"
  post "items", to: "items#post"

  get "cart", to: "carts#show", as: "cart"
  post "cart/clear", to: "carts#delete", as: "clear_cart"

  get "users/:id/", to: "builds#private_index", as: "user"

  get "builds", to: "builds#index", as: "builds"

  get "users/:id/:build_id", to: "builds#show", as: "build"
  get "builds/new", to: "builds#new", as: "new_build"
  get "builds/:build_id/edit", to: "builds#edit", as: "edit_build"
  delete "builds/:build_id/:item_id", to: "builds#remove_item", as: "delete_item_from_build"

  patch "builds/:build_id", to: "builds#update", as: "update_build"
  post "builds", to: "builds#create"
  post "users/:id/:build_id", to: "builds#post"
  delete "users/:id/:build_id", to: "builds#delete"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

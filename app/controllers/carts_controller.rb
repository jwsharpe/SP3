class CartsController < ApplicationController
  def show
    user = User.find(session[:user])
    @items = user.cart.items
  end

  def delete
    user = User.find(session[:user])
    user.cart.clear_cart
    redirect_to cart_path
  end
end

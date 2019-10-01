class CartsController < ApplicationController
  def show
    @items = user.cart.items
  end

  def delete
    user.cart.clear_cart
    redirect_to cart_path
  end
end

class CartsController < ApplicationController
  def show
    @items = user.cart.items

    @total = @items.sum(&:price_in_cents) rescue 0

    @user = user

    @item = Item.find(params[:it]) rescue Item.new
  end

  def delete
    user.cart.clear_cart
    redirect_to cart_path
  end
end

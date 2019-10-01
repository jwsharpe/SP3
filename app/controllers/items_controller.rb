class ItemsController < ApplicationController
  def index
    @user = user
    @items = Item.all
  end

  def show
    @item = Item.find(params[:id])
  end

  def add_to_cart
    item = Item.find(params[:id])
    user.add_item_to_cart(item)
    redirect_to cart_path
  end
end

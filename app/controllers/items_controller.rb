class ItemsController < ApplicationController
  def index
    @user = User.find(session[:user])
    @items = Item.all
  end

  def show
    @item = Item.find(params[:id])
  end

  def add_to_cart
    user = User.find(session[:user])
    item = Item.find(params[:id])
    user.add_item_to_cart(item)
    redirect_to cart_path
  end
end

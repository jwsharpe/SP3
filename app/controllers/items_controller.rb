class ItemsController < ApplicationController
  def index
    @user = User.find(session[:user])
    @items = Item.all
  end

  def show
    @item = Item.find(params[:id])
  end
end

class ItemsController < ApplicationController
  def index
    @user = User.find(session[:user])
    @items = Item.all
  end
end

class ItemsController < ApplicationController
  def index
    @user = user
    @items = Item.all
  end

  def show
    @item = item
    @user = user
    @user_builds = user.builds
  end

  def add_to_cart
    user.add_item_to_cart(item)
    redirect_to cart_path
  end

  def add_to_build
    build = Build.find(params[:build][:id])
    user.add_item_to_build(build, item)
    redirect_to build_path(user, build)
  end

  private

  def item
    Item.find(params[:id])
  end
end

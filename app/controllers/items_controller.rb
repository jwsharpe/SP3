class ItemsController < ApplicationController
  def index
    @user = user
    @items = Item.all

    @search = params[:search]
    if (@search)
      @items = Item.search(@search)
    else
      @search = ""
    end

    @item = Item.find(params[:it]) rescue Item.new
    @user_builds = user.builds
  end

  def post
    redirect_back fallback_location: items_path
  end

  def add_to_cart
    user.add_item_to_cart(item)
    redirect_to cart_path
  end

  def remove_from_cart
    user.cart.carts_items.destroy(user.cart.carts_items.find_by_item_id(params[:id]))
    redirect_to cart_path
  end

  def add_to_build
    build = Build.find(params[:build][:id])
    user.add_item_to_build(build, item)
    redirect_to build_path(user, build)
  end

  def add_build_to_cart
    build = Build.find(params[:build_id])
    build.items.each { |item|
      user.add_item_to_cart(item)
    }
    redirect_to cart_path
  end

  private

  def item
    Item.find(params[:id])
  end
end

class BuildsController < ApplicationController
  def index
    @colors = colors
    @builds = Build.where(public: true).shuffle
  end

  def private_index
    @colors = colors
    @user = User.find(params[:id])
    @builds = Build.where(user_id: @user.id).shuffle
  end

  def show
    @build = Build.find(params[:build_id])
    @owner = User.find(@build.user_id)
    @user = user

    @items = @build.items

    @item = Item.find(params[:it]) rescue Item.new
    @user_builds = user.builds
  end

  def edit
    @build = Build.find(params[:build_id])
    if (session[:user] != @build.user_id)
      redirect_to root_path
    end
  end

  def post
    @build = Build.find(params[:build_id])
    if @build.public
      @build.unpublish
    else
      @build.publish
    end

    redirect_to build_path(@build.user, @build)
  end

  def create
    @build = Build.new(build_params)
    @build.user_id = user.id
    if @build.save
      redirect_to build_path(user, @build)
    else
      flash.now[:message] = @build.errors.full_messages[0]
      render new
    end
  end

  def update
    @build = Build.find(params[:build_id])

    if @build.update(build_params)
      redirect_to build_path(user, @build)
    else
      flash.now[:message] = @build.errors.full_messages[0]
      render new
    end
  end

  def delete
    build = Build.find(params[:build_id])
    build.destroy
    redirect_to user_path(user)
  end

  def remove_item
    item = params[:item_id]
    build = params[:build_id]
    build_item = BuildsItem.where(item_id: item).where(build_id: build).first
    build_item.destroy
    redirect_to build_path(user, build)
  end

  private

  def colors
    ["#ef5350", "#ec407a", "#ab47bc", "#7e57c2", "#5c6bc0", "#42a5f5", "#29b6f6", "#26c6da",
     "#26a69a", "#66bb6a", "#9ccc65", "#d4e157", "#ffee58", "#ffca28", "#ffa726", "#ff7043",
     "#8d6e63", "#78909c"]
  end

  def build_params
    params.require(:build).permit(:title, :description, :id, :user_id)
  end
end

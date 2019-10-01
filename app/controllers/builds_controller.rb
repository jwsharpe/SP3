class BuildsController < ApplicationController
  def index
    @builds = Build.where(public: true)
  end

  def private_index
    @user = User.find(params[:id])
    @builds = Build.where(user_id: @user.id)
  end

  def show
    @build = Build.find(params[:build_id])
    @owner = User.find(@build.user_id)
    @user = user
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
      redirect_to user_path(user)
    else
      @build.publish
      redirect_to builds_path
    end
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

  def build_params
    params.require(:build).permit(:title, :description, :id, :user_id)
  end
end

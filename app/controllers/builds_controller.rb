class BuildsController < ApplicationController
  def index
    @builds = Build.all
  end

  def private_index
    @user = user
    @builds = Build.all.where(user_id: session[:user])
  end

  def show
    @build = Build.find(params[:build_id])
    @owner = User.find(@build.user_id)
    @user = user
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
    redirect_to user_builds_path(user)
  end

  private

  def build_params
    params.require(:build).permit(:title, :description, :id, :user_id)
  end
end

class UsersController < ApplicationController
  skip_before_action :valid?, only: [:new, :create]

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user] = @user.id
      redirect_to items_path
    else
      flash.now[:message] = @user.errors.full_messages[0]
      render :new
    end
  end

  private def user_params
    params.require(:user).permit(:id, :name, :email, :password)
  end
end

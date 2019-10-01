class UsersController < ApplicationController
  skip_before_action :check_no_user, only: [:new, :create]
  before_action :check_user, except: [:show]

  def show
    @user = user
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user] = @user.id
      check_user
    else
      flash.now[:message] = @user.errors.full_messages[0]
      render :new
    end
  end

  private def user_params
    params.require(:user).permit(:id, :name, :email, :password)
  end
end

class ApplicationController < ActionController::Base
  before_action :check_no_user

  def application
    @user = user
  end

  def user
    if session[:user]
      User.find(session[:user])
    end
  end

  def check_no_user
    redirect_to login_path unless user
  end

  def check_user
    redirect_to user_path(user) if user
  end
end

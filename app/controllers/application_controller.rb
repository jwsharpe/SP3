class ApplicationController < ActionController::Base
  before_action :check_no_user
  layout :layout_by_session

  def layout_by_session
    user ? "profile" : "application"
  end

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

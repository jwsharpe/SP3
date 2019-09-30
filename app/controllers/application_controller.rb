class ApplicationController < ActionController::Base
  before_action :valid?

  def user
    if session[:user]
      User.find(session[:user])
    end
  end

  def valid?
    redirect_to login_path unless user
  end
end

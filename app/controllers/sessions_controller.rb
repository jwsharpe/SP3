class SessionsController < ApplicationController
  skip_before_action :check_no_user, only: [:index, :login]
  before_action :check_user, only: [:index, :login]

  def login
    user = User.find_by_email(params[:user][:email])
    if user && user.authenticate(params[:user][:password])
      session[:user] = user.id
      check_user
    else
      flash.now[:message] = "Invalid Login Information."
      render :index
    end
  end

  def logout
    session[:user] = nil
    redirect_to root_path
  end
end

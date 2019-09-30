class SessionsController < ApplicationController
  skip_before_action :valid?, only: [:index, :login]

  def index 
    redirect_to items_path if user?

  end
  def login
    user = User.find_by_email(params[:user][:email])
    if user && user.authenticate(params[:user][:password])
      session[:user] = user.id
      redirect_to items_path
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

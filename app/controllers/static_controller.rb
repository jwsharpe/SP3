class StaticController < ApplicationController
  skip_before_action :valid?

  def index
    redirect_to items_path if user?
  end
end

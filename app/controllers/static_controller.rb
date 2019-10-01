class StaticController < ApplicationController
  skip_before_action :check_no_user
  before_action :check_user
end

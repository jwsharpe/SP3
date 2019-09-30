class StaticController < ApplicationController
  skip_before_action :valid?
end

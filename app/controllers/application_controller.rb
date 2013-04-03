# -*- encoding : utf-8 -*-
class ApplicationController < ActionController::Base
  protect_from_forgery

  def current_user
    User.new
  end
  #
  #decent_configuration do
  #  strategy StrongParametersStrategy
  #end
end

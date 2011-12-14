class ApplicationController < ActionController::Base
  protect_from_forgery
  layout :set_layout
  helper_method :current_user
  
  def set_layout
    "application"
  end

  private

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
  
end

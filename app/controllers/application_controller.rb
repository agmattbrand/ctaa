class ApplicationController < ActionController::Base
  protect_from_forgery
  layout :set_layout
  
  def set_layout
    "application"
  end
  
end

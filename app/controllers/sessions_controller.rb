class SessionsController < ApplicationController
  def new
  end
  
  def create
    user = User.from_omniauth(env["omniauth.auth"])
    session[:user_id] = user.id
    redirect_to root_url, notice: "You are now signed in!"
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url, notice: "You are signed out!"
  end

  def failure
    redirect_to root_url, alert: "Sorry, incorrect email address or password, please try again."
  end
  
end

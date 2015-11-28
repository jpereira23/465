class SessionsController < ApplicationController

  def create 
    user = User.from_omniauth(request.env['omniauth.auth'])
    sessions[:user_id] = user.id
    flash[:success] = "Welcome, #{user.name}"
    redirect_to root_url  
  end 
  
  def destroy
    session[:user_id] = nil 
    flash[:success] = "Goodbye!"
    redirect_to root_url 
  end 
end

class SessionsController < ApplicationController
  
  def new 
  end 
  
  def create 
    
    @user = User.find_by(name: params[:username])
    return head(:forbidden) unless @user.authenticate(params[:password]) 
    session[:user_id] = @user.id
    redirect_to users_welcome_path
  end 
  
  
  

  
end

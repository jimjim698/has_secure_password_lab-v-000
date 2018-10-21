class UsersController < ApplicationController
  
  
  def new 
  end 
  
  def create 
    user = User.new(name: params[:name], password: params[:password])
     user.save 
     session[:user_id] = user.id 
     redirect_to users_welcome_path
  end 
  
  def welcome
    @user = User.find(session[:user_id])
  end 
end

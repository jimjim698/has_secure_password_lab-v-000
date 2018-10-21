class UsersController < ApplicationController
  
  
  def new 
  end 
  
  def create 
    user = User.new(name: params[:user][:name], password: params[:user][:password])
     user.save 
     session[:user_id] = user.id 
     redirect_to users_welcome_path
  end 
  
  def welcome
    @user = User.find(session[:user_id])
  end 
end

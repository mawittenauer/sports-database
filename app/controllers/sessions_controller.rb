class SessionsController < ApplicationController
  def create
    user = User.find_by(username: params[:username])
    
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      if user.admin?
        redirect_to admin_path
      else
        redirect_to login_path
      end
    else
      render :new
    end
  end
  
  def destroy
    session[:user_id] = nil
    flash[:success] = "You have successfully logged out"
    redirect_to login_path
  end
end

class AdminsController < ApplicationController
  before_action :require_user, :require_admin
  
  def control_panel
    
  end
  
  private
  
  def require_admin
    if !current_user.admin?
      flash[:danger] = "Must be admin to access this page"
      redirect_to login_path
    end
  end
end

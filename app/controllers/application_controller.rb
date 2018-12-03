class ApplicationController < ActionController::Base
  helper_method :current_user, :logged_in?, :require_login

  add_flash_types :danger, :info, :success, :warning
  
  private 

  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end

  def logged_in?
    !!current_user
  end

  def require_login
    redirect_to '/login' unless logged_in?
  end
end

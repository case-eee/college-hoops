class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  helper_method :current_user, :current_week

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def authorize
    redirect_to login_path, alert: 'You must be logged in to access this page.' if current_user.nil?
  end

  def current_week
  	@current_week ||= Week.where(current: true).first
  end
end

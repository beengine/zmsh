class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :admin?

  def admin?
    session[:login]
  end

  def authenticate_admin
    unless admin?
      redirect_to root_path
      return false
    end
  end
end

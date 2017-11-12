class SessionsController < ApplicationController
  def new
    redirect_to admin_pages_path if admin?
  end

  def create
    if params[:password] == Rails.application.secrets.password
      session[:login] = true
      redirect_to admin_pages_path
    else
      render 'new'
    end
  end

  def destroy
    session[:login] = false
    redirect_to root_path
  end
end
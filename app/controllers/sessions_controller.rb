class SessionsController < ApplicationController

  def new

  end

  def create
    user = User.find_by_email(params[:email])
    if user && user.authendicate(params[:password])
      session[:user_id] = user.user_id
      redirect_to root_url
    else
      flash.now.alert = "Email or Password in Invalid"
      render "new"
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url
  end

  def show
    @session = Session.find(params[:id])
  end
end

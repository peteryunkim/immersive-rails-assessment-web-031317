class SessionsController < ApplicationController

  def new
  end

  def create
    # byebug
    @user = User.find_by(username: params[:username])
    if @user.present? && @user.authenticate(params[:password])
      session[:id] = @user.id
      redirect_to episodes_path
    else
      flash[:message] = "Please double-check username and password"
      redirect_to login_path
    end

  end


  def logout
    session.destroy
    redirect_to episodes_path
  end

end

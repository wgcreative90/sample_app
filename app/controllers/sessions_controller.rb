class SessionsController < ApplicationController
  
  def new

  end

  # finds existing user, checks to see if user can be authenticated
  def create
    @user = User.find_by(email: params[:email])
    if @user.present? && @user.authenticate(params[:password])
      # sets up user.id sessions
      session[:user_id] = @user.id
      redirect_to @user, notice: 'Logged in successfully'
    else
      flash.now[:alert] = 'Invalid email or password'
      redirect_to log_in_path
    end
  end

  def destroy
    # deletes user session
    session[:user_id] = nil
    flash.now[:alert] = 'Invalid email or password'
    redirect_to root_path
  end

end

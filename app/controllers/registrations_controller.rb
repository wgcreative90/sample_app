class RegistrationsController < ApplicationController
  # Instanciates new user
  def new
    @user = User.new
  end

  # If user saves successfully with status, 200, saves iser id in a session.
  def create
    @user = User.new(user_params)
    if @user.save
      # stores saved user id in a session
      session[:user_id] = @user.id
      redirect_to root_path, notice: 'Successfully created account'
    else
      render :new
    end
  end

  private

  #strong parameters
  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation)
  end
end

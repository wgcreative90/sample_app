class RegistrationsController < ApplicationController
    # instantiates new user
    def new
      @user = User.new
    end

    def create
      @user = User.new(user_params)
      if @user.save
      # stores saved user id in a session
        session[:user_id] = @user.id
        flash[:notice] = "USER CREATED, REDIRECTING YOU..."
        redirect_to user_path(@user), flash[:notice] = "Successfully created account"
      else
        flash[:notice] = "Something went wrong, please try again."
        PasswordResetsController.gen_temporary_password & redirect_to 
      end
    end

    private

    def user_params
      # strong parameters
      params.require(:user).permit(:email, :password, :password_confirmation)
    end
  end
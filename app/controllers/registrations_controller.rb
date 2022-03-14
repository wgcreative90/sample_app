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
        flash[:notice] = "Welcome" + @user.email.to_s
        redirect_to @user
      else
        flash[:notice] = "Something went wrong, please try again."
        redirect_to 'user#new'
      end
    end

    private

    def user_params
      # strong parameters
      params.require(:user).permit(:email, :password, :password_confirmation)
    end
  end
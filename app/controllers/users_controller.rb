class UsersController < ApplicationController
  
  def show
    @user = User.find(params[:id])
  end


  def new
    @user = User.new
  end

  def index
    @users = User.all
  end


  def create
    @user = User.new  
    if @user.save(user_params)
      reset_session
      log_in @user
      flash[:success] = 'Welcome to the Sample App!'
      redirect_to @user
    else
      render 'new'
    end
  end

  def edit
    @user = User.find(params[:id])
  end
  

  private

  def user_params
    params.require(:user).permit(:email, :password_digest, :password_confirmation)
  end

end

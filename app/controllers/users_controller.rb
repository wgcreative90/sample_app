class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    # @user = User.new
    # if @user.save
    #   reset_session
    #   log_in @user
    #   flash[:success] = 'Welcome to the Sample App!'
    #   redirect_to :user_show_path
    # end
    # redirect_to :user_new_url
  end

  private

  def user_params
    params.require(:user).permit(:email,:password_digest)
  end
end

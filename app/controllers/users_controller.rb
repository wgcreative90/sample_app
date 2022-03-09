class UsersController < ApplicationController

  def show
    @user = User.find(user_params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])    # Not the final implementation!
    if @user.save
      # Handle a successful save.
    else
      render 'new'
    end
  end
  private

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
end



# class UsersController < ApplicationController
  # def show
  #   @user = User.find(params[:id])
  # end
  #
  # def index
  #   @users = User.all
  # end
  #
  # def new
  #   @user = User.new(user_params)
  #   self.create
  #   @user
  # end
  #
  # def create
  #   @user = User.new(user_params)
  #   if @user.save
  #     reset_session
  #     log_in @user
  #     flash[:success] = "Welcome to the Sample App!"
  #     redirect_to @user
  #   else
  #     render 'new'
  #   end
  # end
  #
  # def edit
  #   @user = User.find(params[:id])
  #   @user.update()
  # end
  #
  # def update
  #   @user = User.find(params[:id])
  #   if @user.update user_params
  #     @user.save
  #     flash[:success] = "Congrats, you updated your profile with success"
  #     redirect_to @user
  #   else
  #     render 'edit'
  #   end
  # end

  # private
  # def user_params
  #   params.require(:user).permit(:name, :email, :password_confirmation, :password_digest)
  # end
#
# end

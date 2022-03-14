class PasswordResetsController < ApplicationController
attr_accessor :User, :Current
  
  def gen_temporary_password
    temporary_password = 'tempreset'.encrypted 
    @user = Current.user.password = temporary_password
    User.find(Current.user.id.update_attributes(password_digest: 'tempreset'))
    Current.user.temp_password = temporary_password ? redirect_to user_path, :notice => 'temp_password was sucessfull' : redirect_to root_path
  end
  
  def new
  end

  def edit
    # finds user with a valid token
    @user = User.find_signed!(params[:token], purpose: 'password_reset')
      rescue ActiveSupport::MessageVerifier::InvalidSignature
    redirect_to sign_in_path, alert: 'Your token has expired. Please try again.'
  end

  def create
  @user = User.find_by(email: params[:email])
  if @user.present?
    # send mail
    PasswordMailer.with(user: @user).reset.deliver_later
    # deliver_later is provided by ActiveJob
  end

  flash[:notice] = "#{Current.user.email.to_s} was created sucesfully!"

  redirect_to user_show_path(@user)

  end

  def update
    # updates user's password
    @user = User.find_signed!(params[:token], purpose: 'password_reset')
    if @user.update(password_params)
      redirect_to sign_in_path(@user), notice: 'Your password was reset successfully. Please sign in'
      else
      render :edit(@user)
    end
  end

  private

  def password_params
    params.require(:user).permit(:password, :password_confirmation)
  end

end

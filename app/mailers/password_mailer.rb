class PasswordMailer < ApplicationMailer

  def edit
    # assigns a token with a purpose and expiry time
    token = params[:user].signed_id(purpose: 'password_reset')
    # sends email
    mail to: params[:user].email, token: token, subject: "password reset email", body: 'edit'
  end

end

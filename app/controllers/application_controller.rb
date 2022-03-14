class ApplicationController < ActionController::Base

  before_action :set_current_user

  def set_current_user
    if session[:user_id]
      Current.user = User.find_by(id: session[:user_id]) 
      Current.user
    end
  end

  def require_user_logged_in!
    # allows only logged in user
    if Current.user.nil?
      redirect_to sign_in_path, alert: 'You must be signed in' 
    end
    
  end

end
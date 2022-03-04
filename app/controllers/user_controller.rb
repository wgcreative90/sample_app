class UserController < ApplicationController
  def show
    @user = User.all.find(params[:id])
  end
end

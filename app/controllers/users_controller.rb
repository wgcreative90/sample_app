class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show; end

  def new; end

  def update; end

  def delete; end
end

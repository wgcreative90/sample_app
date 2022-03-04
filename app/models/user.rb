class User < ActiveRecord::Base
  attr_accessor :name, :email
  def show
    @user = User.all.find(params[:id])

  end

  def say_my_name
    @user.to_s
  end

end

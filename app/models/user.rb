class User < ApplicationRecord
  attr_accessor :name, :email, :id

  def say_my_name
    "Hello I am  #{user.name}"
  end

end
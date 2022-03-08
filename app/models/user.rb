# frozen_string_literal: true
#
class User < ApplicationRecord
  attr_accessor :first_name, :last_name, :email

  validates_presence_of :first_name, :last_name, :email
  validates_uniqueness_of :email, :email.to_s + :password.to_s

end

# frozen_string_literal: true

class User < ApplicationRecord
  # attr_accessor :name, :email
  # before_save :downcase_email

  # attr_accessor :name, :email, :remember_token, :activation_token, :reset_token
  # before_create :create_activation_digest

  # Activates an account.
  # def activate
  #   update_attribute(:activated, true)
  #   update_attribute(:activated_at, Time.zone.now)
  # end
  #
  # # Sends activation email.
  # def send_activation_email
  #   UserMailer.account_activation(self).deliver_now
  # end
  #
  # # Sets the password reset attributes.
  # def create_reset_digest
  #   self.reset_token = User.new_token
  #   update_attribute(:reset_digest, User.digest(reset_token))
  #   update_attribute(:reset_sent_at, Time.zone.now)
  # end
  #
  # # Sends password reset email.
  # def send_password_reset_email
  #   UserMailer.password_reset(self).deliver_now
  # end
  #
  # private
  #
  # # Converts email to all lowercase.
  # def downcase_email
  #   self.email = email.downcase
  # end
  #
  # # Creates and assigns the activation token and digest.
  # def create_activation_digest
  #   self.activation_token = User.new_token
  #   self.activation_digest = User.digest(activation_token)
  # end

  validates :email, presence: true, length: { maximum: 255 },uniqueness: { case_sensitive: false }
  validates :name, presence: true, length: { maximum: 50 }
  validates :email, presence: true, length: { maximum: 255 }
end

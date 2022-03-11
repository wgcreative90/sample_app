class User < ApplicationRecord
  # attr_accessor :name, :email, :password_digest, :password_confirmation
  has_secure_password

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i.freeze

  validates :email,
            presence: true,
            length: { maximum: 255 },
            uniqueness: { case_sensitive: false }

  validates :name,
            presence: true,
            length: { maximum: 50 }

  validates :email,
            presence: true,
            length: { maximum: 255 },
            format: { with: VALID_EMAIL_REGEX },
            uniqueness: true

  has_secure_password
end

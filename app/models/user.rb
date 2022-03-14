class User < ApplicationRecord
  # adds virtual attributes for authentication
  has_many :microposts
  has_secure_password

  # validates email
  validates :email, presence: true, format: { with: /\A[^@\s]+@[^@\s]+\z/, message: 'Invalid email' }

end
# frozen_string_literal: true

class User < ApplicationRecord
  attr_accessor :name, :email, :password_digest, :password_confirmation

  has_secure_password :password_confirmation, validations: false
  validates :password, presence: true, length: { minimum: 4 }

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

  # It is a good idea to format strings consistently prior to saving it in the database to keep a regular dataset
  # in memory. In my experience it solves many headaches later that can be more difficult to identify down the line
  # as validations increase as well as the dataset and models that are related to and depend on one another for just
  # like things relate in real life. Object Oriented Programming makes this fun.
  validates :email, presence: true, length: { maximum: 255 }, uniqueness: { case_sensitive: false }
  validates :name, presence: true, length: { maximum: 50 }
  validates :email, presence: true, length: { maximum: 255 }, format: { with: VALID_EMAIL_REGEX }, uniqueness: true

  has_secure_password
  # [bcrypt gem provides source code that includes encrypting and decrypting the password attribute which is returned
  # as password digest and can then only be validated by passing the password_digest value to the cls.method
  # 'authenticate(password_digest) => decrypts the string_hash and returns a boolean based on equality check against
  # user.password_confirmation which is usually the input we all as users are asked to type in our password and email
  # to sign in as well as sign up']

  # has_secure_password which we get from the bcrypt gem on bundle update also provides a method called authenticate
  # (password_digest:password) is === to the return value of the <class..> method authenticate(password_digest) which is
  # being inherited and used as a means to salt(shake up) and hash( encrypt with key that is makes it worthless to
  # waste time trying to reverse because it would just take to long. As the computers get faster the bit encryption
  # will continue to increase thus creating a balancing act...ramble over. :) 001010
end

require 'bcrypt'

class User < ApplicationRecord
  include BCrypt

  has_secure_password

  validates :name, presence: true
  validates :email, presence: true
  validates :password, presence: true
end

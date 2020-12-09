require 'bcrypt'

class User < ApplicationRecord
  include BCrypt

  has_secure_password

  validates :name, presence: true
  validates :email, presence: true, uniqueness: true
  validates :password, presence: true
  validates :username, presence: true, uniqueness: true

  has_many :bets
end

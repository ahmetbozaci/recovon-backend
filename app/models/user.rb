class User < ApplicationRecord
  has_secure_password
  has_many :doctors
  has_many :appointments
  validates :name, :email, :password, :password_confirmation, presence: true
  validates :name, uniqueness: { case_sensitive: false }
  validates :password, length: { minimum: 8 }
end

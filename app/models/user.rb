class User < ApplicationRecord
  has_secure_password
  has_many :doctors
  has_many :appointments
  validates :name, :email, :password, presence: true
  validates :name, uniqueness: { case_sensitive: false }
  validates :password, confirmation: true, length: { minimum: 8 }
end

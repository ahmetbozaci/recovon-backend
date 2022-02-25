class User < ApplicationRecord
  has_secure_password
  has_many :doctors
  has_many :appointments
  validates :name, presence: true, uniqueness: true
  validates :password, length: {minimum:6}
end

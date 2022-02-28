class User < ApplicationRecord
  has_secure_password
  has_many :doctors
  has_many :appointments
  validates :name, presence: true, uniqueness: true, length: {minimum: 5}
  validates :password, length: {minimum:6}
end

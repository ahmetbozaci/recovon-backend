class User < ApplicationRecord
  has_many :doctors
  validates :name, presence: true
end

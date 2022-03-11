class Doctor < ApplicationRecord
  belongs_to :user
  has_many :appointments
  validates :name, :location, :specification, :picture, :description, :price, presence: true
  validates :price, numericality: { greater_than: 0 }
end

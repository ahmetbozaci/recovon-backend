class Appointment < ApplicationRecord
  belongs_to :user
  belongs_to :doctor

  validates :time, :date, presence: true
end

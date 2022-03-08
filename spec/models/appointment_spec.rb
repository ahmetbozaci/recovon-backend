require 'rails_helper'

RSpec.describe Appointment, type: :model do
  describe 'Appointment validation tests' do
    subject do
      @user1 = User.create!(name: 'user1', email: 'user1@mail.com', password: '12345678',
                            password_confirmation: '12345678')
      @doctor1 = Doctor.create!(user_id: @user1.id, name: 'doctor1', location: 'lebanon',
                                specification: 'eye specialist', picture: 'url', price: 25_000,
                                description: 'friendly and caring')
      Appointment.create!(user_id: @user1.id, doctor_id: @doctor1.id, time: Time.now, date: '28-02-2022')
    end
    before { subject.save }

    it 'time should be present in the appointme' do
      subject.time = nil
      expect(subject).to_not be_valid
    end

    it 'date set should be present' do
      subject.date = nil
      expect(subject).to_not be_valid
    end
  end
end

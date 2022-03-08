require 'rails_helper'

RSpec.describe Doctor, type: :model do
  describe 'Doctor validation tests' do
    subject do
      @user1 = User.create!(name: 'user1', email: 'user1@mail.com', password: '12345678',
                            password_confirmation: '12345678')
      Doctor.create!(user_id: @user1.id, name: 'doctor1', location: 'lebanon', specification: 'eye specialist',
                     picture: 'url', price: 25_000, description: 'friendly')
    end
    before { subject.save }

    it 'name of doctor should be present' do
      subject.name = nil
      expect(subject).to_not be_valid
    end

    it 'location should be availa for user' do
      subject.location = nil
      expect(subject).to_not be_valid
    end

    it 'Doctors specification should be present' do
      subject.specification = nil
      expect(subject).to_not be_valid
    end

    it 'picture should be present' do
      subject.picture = nil
      expect(subject).to_not be_valid
    end

    it 'description should be present' do
      subject.description = nil
      expect(subject).to_not be_valid
    end

    it 'price should be integer' do
      subject.price = 30
      expect(subject).to be_valid
    end

    it 'price should be greater 0' do
      subject.price = -1
      expect(subject).to_not be_valid
    end
  end
end

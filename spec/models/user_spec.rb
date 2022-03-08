require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'User validation tests' do
    subject { User.new(name: 'Ali', email: 'ali@mail.com', password: '12345678', password_confirmation: '12345678') }
    before { subject.save }

    it 'name should be present for a user' do
      subject.name = nil
      expect(subject).to_not be_valid
    end

    it 'email of user should be present' do
      subject.email = nil
      expect(subject).to_not be_valid
    end

    it 'password should be present' do
      subject.password = nil
      expect(subject).to_not be_valid
    end

    it 'password confirmation should be present' do
      subject.password = nil
      expect(subject).to_not be_valid
    end
  end
end

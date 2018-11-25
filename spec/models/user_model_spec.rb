require 'rails_helper'

RSpec.describe User, type: :model do
  subject do
    described_class.new(name: 'Test', email: 'test@test.com', password: 'password')
  end

    it 'creates a user' do
      expect(subject.name).to eq 'Test'
      expect(subject.email).to eq 'test@test.com'
    end

    it 'is not valid without a name' do
      subject.name = nil
      expect(subject).to_not be_valid
    end

    it 'is not valid without an email' do
      subject.email = nil
      expect(subject).to_not be_valid
    end

    it 'is not valid without a password' do
      subject.password = nil
      expect(subject).to_not be_valid
    end

  end

require 'rails_helper'

RSpec.describe User, type: :model do
  subject do
    described_class.new(name: 'Test', email: 'test@test.com', password: 'password')
  end

    it 'creates a user' do
      expect(subject.name).to eq 'Test'
      expect(subject.email).to eq 'test@test.com'
      expect(subject.password).to eq 'password'
    end

  end

require 'rails_helper'

  describe '#create' do
    it 'creates a user' do
      User.create(name: 'Jeff', email: 'jeff@hotmail.com', password: 'password1')
      user = User.find_by(name: 'Jeff')
      expect(User.find_by(name: 'Jeff')).to be_valid
      expect(user.id).to eq 17
      expect(user.name).to eq 'Jeff'
      expect(user.email).to eq 'jeff@hotmail.com'
    end
  end

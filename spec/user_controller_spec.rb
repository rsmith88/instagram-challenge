require 'rails_helper'

RSpec.describe UsersController, type: :controller do
  describe 'GET #new' do
    it 'returns http success' do
      get :new
      expect(response).to have_http_status(:success)
    end
  end

  describe 'POST /' do
    it 'responds with 200' do
      post :create, params: { user: { name: 'Jeff', email: 'jeff@hotmail.com', password: 'password1' } }
      expect(response).to redirect_to(users_new_url)
    end

    it 'creates a user' do
      post :create, params: { user: { name: 'Jeff', email: 'jeff@hotmail.com', password: 'password1' } }
      user = User.find_by(name: 'Jeff')
      expect(User.find_by(name: 'Jeff')).to be_valid
      expect(user.id).to eq 17
      expect(user.name).to eq 'Jeff'
      expect(user.email).to eq 'jeff@hotmail.com'
    end
  end

  describe 'GET /' do
    it 'responds with 200' do
      get :index
      expect(response).to have_http_status(200)
    end
  end
end

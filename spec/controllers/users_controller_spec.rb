# frozen_string_literal: true

require 'rails_helper'

RSpec.describe UsersController, type: :controller do
  describe 'GET #index' do
    it 'assigns all users to @users and renders the index template' do
      user1 = create(:user, name: 'User 1')
      user2 = create(:user, name: 'User 2')
      sign_in user1
      get :index
      expect(assigns(:users)).to eq([user1, user2])
      expect(response).to render_template(:index)
    end
  end

  describe 'DELETE #destroy' do
    let(:user) { create(:user) } 
    it 'deletes the user with no active loans and redirects to users_path' do
      sign_in user
      expect do
        delete :destroy, params: { id: user.id }
      end.to change(User, :count).by(-1)
      expect(response).to redirect_to(users_path)
      expect(flash[:notice]).to eq('User has been successfully deleted.')
    end
  end
end

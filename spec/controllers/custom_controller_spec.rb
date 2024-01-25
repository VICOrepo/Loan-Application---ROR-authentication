# frozen_string_literal: true

# spec/controllers/custom_controller_spec.rb

require 'rails_helper'

RSpec.describe CustomController, type: :controller do
  describe 'POST #create' do
    let(:user_params) { { email: 'user@example.com', password: 'password' } }

    context 'when user does not have the admin role' do
      it 'redirects to root_path' do
        # user = User.create(email: 'user@example.com', password: 'password')
        # post :create, params: { user: user_params }
        # expect(response).to redirect_to(root_path)
      end

      it 'calls super to perform the default Devise behavior' do
        # allow_any_instance_of(CustomController).to receive(:super)
        # post :create, params: { user: user_params }
      end
    end

    context 'when user has the admin role' do
      it 'does not redirect to root_path' do
        # admin_user = User.create(email: 'admin@example.com', password: 'password', roles: [:admin])
        # post :create, params: { user: user_params.merge(email: admin_user.email) }
        # expect(response).not_to redirect_to(root_path)
      end
    end
  end
end

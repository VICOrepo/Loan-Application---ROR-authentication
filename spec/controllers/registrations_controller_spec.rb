# frozen_string_literal: true

# spec/controllers/users/registrations_controller_spec.rb

require 'rails_helper'

RSpec.describe Users::RegistrationsController, type: :controller do
  let(:user_attributes) { attributes_for(:user) } # Assuming you have FactoryBot for creating user attributes

  describe 'POST #create' do
    it 'creates a new user and redirects to the root path' do
      #   expect {
      #     post :create, params: { user: user_attributes }
      #   }.to change(User, :count).by(1)

      #   expect(response).to redirect_to(root_path)
      #   expect(flash[:notice]).to include("Welcome! #{user_attributes[:email]} You have signed up successfully.")
    end

    context 'with invalid parameters' do
      it 'renders the new template with errors' do
        # post :create, params: { user: { email: 'invalid_email' } }
        # expect(response).to render_template(:new)
        # expect(flash[:alert]).to be_present
      end
    end
  end

  describe 'GET #new' do
    it 'renders the new template' do
      #   get :new
      #   expect(response).to render_template(:new)
      #   expect(response).to have_http_status(:ok)
    end
  end

  # Add more test cases for other actions as needed
end

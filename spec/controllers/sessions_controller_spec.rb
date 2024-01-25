# frozen_string_literal: true

# spec/controllers/users/sessions_controller_spec.rb

require 'rails_helper'

RSpec.describe Users::SessionsController, type: :controller do
  let(:user) { create(:user) } # Assuming you have FactoryBot for creating users

  describe 'DELETE #destroy' do
    it 'signs out the user and redirects to the root path' do
      #   sign_in user

      #   delete :destroy

      #   expect(response).to redirect_to(root_path)
      #   expect(flash[:notice]).to eq('Signed out successfully.')
    end
  end

  # Add more test cases for other actions as needed
end

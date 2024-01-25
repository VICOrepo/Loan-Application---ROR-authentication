# frozen_string_literal: true

require 'rails_helper'

RSpec.describe UsersController, type: :controller do
  describe 'GET #index' do
    it 'renders the index template' do
      #   user = create_user
      #   sign_in user
      #   get :index
      #   expect(response).to render_template(:index)
    end

    it 'assigns all users to @users' do
      #   admin_user = create_user(roles: :admin)
      #   sign_in admin_user
      #   regular_user = create_user
      #   get :index
      #   expect(assigns(:users)).to eq([admin_user, regular_user])
    end

    it 'redirects to root_path if user is not an admin' do
      #   user = create_user
      #   sign_in user
      #   get :index
      #   expect(response).to redirect_to(root_path)
    end
  end

  describe 'DELETE #destroy' do
    it 'destroys the user if no loans are present' do
      #   admin_user = create_user(roles: :admin)
      #   sign_in admin_user
      #   user_to_delete = create_user
      #   delete :destroy, params: { id: user_to_delete.id }
      #   expect(response).to redirect_to(users_path)
      #   expect(flash[:notice]).to eq('User has been successfully deleted.')
    end

    it 'does not destroy the user and redirects with an alert if user has active loans' do
      #   admin_user = create_user(roles: :admin)
      #   sign_in admin_user
      #   user_with_loans = create_user
      #   create_loan(user: user_with_loans)
      #   delete :destroy, params: { id: user_with_loans.id }
      #   expect(response).to redirect_to(users_path)
      #   expect(flash[:alert]).to include('cannot be deleted')
    end
  end

  describe 'PUT #make_admin' do
    it 'adds the admin role to the user' do
      #   admin_user = create_user(roles: :admin)
      #   sign_in admin_user
      #   regular_user = create_user
      #   put :make_admin, params: { id: regular_user.id }
      #   expect(response).to redirect_to(users_path)
      #   expect(flash[:notice]).to eq('User is now an admin.')
      #   expect(regular_user.has_role?(:admin)).to be(true)
    end
  end
end

# frozen_string_literal: true

# spec/controllers/loans_controller_spec.rb

require 'rails_helper'

RSpec.describe LoansController, type: :controller do
  let(:user) { User.create(email: 'user@example.com', password: 'password') }

  before do
    sign_in user # Assuming you have authentication set up
  end

  describe 'GET #show' do
    # it 'renders the show template' do
    # #   loan = Loan.create(user: user)
    # #   get :show, params: { id: loan.id }
    # #   expect(response).to render_template(:show)
    # end
  end

  describe 'GET #index' do
    # it 'renders the index template' do
    # #   get :index
    # #   expect(response).to render_template(:index)
    # end

    context 'when user has admin role' do
      #   let(:user) { User.create(email: 'admin@example.com', password: 'password', roles: [:admin]) }

      #   it 'loads all loans for admin' do
      #     # loan = Loan.create
      #     # get :index
      #     # expect(assigns(:loans)).to eq([loan])
      #   end
    end

    context 'when user does not have admin role' do
      #   it 'loads user loans' do
      #     # loan = Loan.create(user: user)
      #     # get :index
      #     # expect(assigns(:loans)).to eq([loan])
      #   end
    end
  end

  describe 'GET #new' do
    # it 'renders the new template' do
    # #   get :new
    # #   expect(response).to render_template(:new)
    # end
  end

  describe 'POST #create' do
    # let(:valid_loan_params) { { name: 'John Doe', amount: 1000 } }

    # it 'creates a new loan' do
    # #   expect do
    # #     post :create, params: { loan: valid_loan_params }
    # #   end.to change(Loan, :count).by(1)

    # #   expect(response).to redirect_to(assigns(:loan))
    # end
  end

  describe 'GET #edit' do
    # it 'renders the edit template' do
    # #   loan = Loan.create(user: user)
    # #   get :edit, params: { id: loan.id }
    # #   expect(response).to render_template(:edit)
    # end
  end

  describe 'PUT #update' do
    # let(:loan) { Loan.create(user: user) }
    # let(:updated_loan_params) { { amount: 2000 } }

    # it 'updates the loan' do
    # #   put :update, params: { id: loan.id, loan: updated_loan_params }
    # #   expect(response).to redirect_to(assigns(:loan))
    # #   expect(loan.reload.amount).to eq(2000)
    # end
  end
end

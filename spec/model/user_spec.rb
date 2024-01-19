# spec/models/user_spec.rb
require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'admin?' do
    it 'returns true for an admin user' do
      user = build(:user, user_role: 2) # Assuming you have a FactoryBot factory for User
      expect(user.admin?).to be true
    end

    it 'returns false for a regular user' do
      user = build(:user, user_role: 1) # Assuming you have a FactoryBot factory for User
      expect(user.admin?).to be false
    end
  end

  describe 'devise modules' do
    it { is_expected.to have_db_column(:email).of_type(:string).with_options(null: false) }
    it { is_expected.to have_db_column(:encrypted_password).of_type(:string).with_options(null: false) }
    # Add more column and validation tests as needed
    # ...

    it { is_expected.to validate_presence_of(:email) }
    it { is_expected.to validate_uniqueness_of(:email).case_insensitive }
    it { is_expected.to validate_presence_of(:password) }
    it { is_expected.to validate_confirmation_of(:password) }
    it { is_expected.to validate_length_of(:password).is_at_least(6).is_at_most(128) }
  end

  describe 'devise modules inclusion' do
    it { is_expected.to have_module(:database_authenticatable) }
    it { is_expected.to have_module(:registerable) }
    it { is_expected.to have_module(:recoverable) }
    it { is_expected.to have_module(:rememberable) }
    it { is_expected.to have_module(:validatable) }
  end
end

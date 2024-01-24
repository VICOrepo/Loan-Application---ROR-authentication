# spec/models/user_spec.rb

require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'associations' do
    it { should have_many(:loans) }
  end

  describe 'roles' do
    it 'should have a role of admin' do
      user = User.create(email: 'test@example.com', password: 'password') # Adjust attributes as needed
      user.add_role(:admin)
      expect(user).to be_admin
    end
  end

  describe 'devise modules' do
    it { is_expected.to validate_presence_of(:email) }
    it 'validates uniqueness of email' do
      user1 = create(:user, email: 'test@example.com')
      user2 = build(:user, email: 'test@example.com')
      expect(user2.valid?).to be_falsey
    end
    it { is_expected.to validate_presence_of(:password).on(:create) }
    it { is_expected.to validate_length_of(:password).is_at_least(Devise.password_length.first).is_at_most(Devise.password_length.last).on(:create) }
    it { is_expected.to validate_presence_of(:password).on(:update) }
    it { is_expected.to validate_length_of(:password).is_at_least(Devise.password_length.first).is_at_most(Devise.password_length.last).on(:update) }
  end
end

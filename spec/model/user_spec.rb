# frozen_string_literal: true
require 'rails_helper' # Make sure this line is present and correct

RSpec.describe User, type: :model do
  context 'associations' do
    it 'has many loans' do
      user = described_class.reflect_on_association(:loans)
      expect(user.macro).to eq :has_many
    end
  end

  context 'roles' do
    it 'can be assigned the admin role' do
      user = User.new
      user.add_role(:admin)
      expect(user.admin?).to be true
    end

    it 'does not have admin role by default' do
      user = User.new
      expect(user.admin?).to be false
    end
  end

  context 'devise modules' do
    it 'includes database_authenticatable' do
      expect(User.devise_modules).to include(:database_authenticatable)
    end

    it 'includes registerable' do
      expect(User.devise_modules).to include(:registerable)
    end

    it 'includes recoverable' do
      expect(User.devise_modules).to include(:recoverable)
    end

    it 'includes rememberable' do
      expect(User.devise_modules).to include(:rememberable)
    end

    it 'includes validatable' do
      expect(User.devise_modules).to include(:validatable)
    end
  end
  

  # Add more tests based on your specific requirements and model logic
end

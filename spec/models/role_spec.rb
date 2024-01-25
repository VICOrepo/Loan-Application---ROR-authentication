# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Role, type: :model do
  describe 'associations' do
    it { should have_and_belong_to_many(:users).join_table(:users_roles) }
    it { should belong_to(:resource).optional(true) }
  end

  describe 'validations' do
    it { should validate_inclusion_of(:resource_type).in_array(Rolify.resource_types).allow_nil }
  end

  describe 'scopes' do
    it 'responds to scopify' do
      expect(described_class).to respond_to(:scopify)
    end
  end

  describe 'methods' do
    it 'should have a resource_type inclusion array' do
      expect(Rolify.resource_types).to be_an(Array)
    end
  end

  # Additional tests for specific functionality can be added as needed.
end

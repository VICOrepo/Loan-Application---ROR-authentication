# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Loan, type: :model do
  describe 'validations' do
    let(:valid_loan) do
      described_class.new(
        name: 'John Doe',
        email: 'john@example.com',
        date_of_birth: Date.new(1990, 1, 1),
        amount: 10_000,
        purpose: 'Medical',
        ssn: '123-45-6789',
        phone_number: '(123) 456-7890',
        address: '123 Main St',
        home_number: '(123) 456-7890',
        zip: 12_345,
        residence_type: 'Own',
        annual_income: 50_000,
        employer_name: 'ABC Corp',
        employer_phone: '(111) 222-3333'
        # Add more attributes as needed
      )
    end
    # Add more test cases for other attributes
  end

  describe 'enums' do
    it 'defines the correct values for purpose enum' do
      expect(Loan.purposes.keys).to match_array(%w[Medical Gold Education Business Home Vehicle])
    end

    it 'defines the correct values for residence_type enum' do
      expect(Loan.residence_types.keys).to match_array(%w[Own Rent Lease])
    end
  end

  describe 'associations' do
    it 'belongs to a user' do
      association = described_class.reflect_on_association(:user)
      expect(association.macro).to eq :belongs_to
    end
  end
end

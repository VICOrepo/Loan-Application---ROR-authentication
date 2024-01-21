# spec/models/loan_spec.rb
require 'rails_helper'

RSpec.describe Loan, type: :model do
  describe 'validations' do
    subject { build(:loan) } # Assuming you have a FactoryBot factory for Loan

    it { is_expected.to validate_presence_of(:name) }
    it { is_expected.to validate_length_of(:name).is_at_least(4).is_at_most(100) }

    # Add similar validations for other attributes
    # ...

    it { is_expected.to validate_presence_of(:employer_phone) }
    it { is_expected.to allow_value('(123) 456-7890').for(:employer_phone) }
    it { is_expected.not_to allow_value('123-456-7890').for(:employer_phone) }
  end

  describe 'enums' do
    it { is_expected.to define_enum_for(:purpose).with_values(%i[Medical_Expenses Gold Education Business Home Vehicle]) }
  end
end

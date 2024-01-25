# frozen_string_literal: true

# spec/models/application_record_spec.rb

require 'rails_helper'

RSpec.describe ApplicationRecord, type: :model do
  it 'has a primary abstract class' do
    expect(ApplicationRecord.abstract_class).to be_truthy
  end
end

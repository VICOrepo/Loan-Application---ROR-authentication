# frozen_string_literal: true

# spec/channels/application_cable/connection_spec.rb

require 'rails_helper'

RSpec.describe ApplicationCable::Connection, type: :channel do
  let(:user) { create(:user) } # Assuming you have a User model and FactoryBot for creating users

  it 'successfully connects with a user' do
    # connect '/cable', headers: { 'Authorization' => "Bearer #{user.authentication_token}" }
    # expect(connection.current_user).to eq(user)
  end
end

# frozen_string_literal: true

# spec/channels/application_cable/channel_spec.rb

require 'rails_helper'

RSpec.describe ApplicationCable::Channel, type: :channel do
  let(:channel_class) { Class.new(described_class) }

  it 'successfully subscribes' do
    subscribe
    expect(subscription).to be_confirmed
  end
end

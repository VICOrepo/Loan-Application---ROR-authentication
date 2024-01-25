# frozen_string_literal: true

# spec/factories/users.rb

FactoryBot.define do
  factory :user do
    email { 'user@example.com' }
    password { 'password' }

    # Assuming you have a field named authentication_token
    authentication_token { 'sample_token' }
  end
end

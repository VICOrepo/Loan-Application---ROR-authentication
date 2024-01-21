require 'faker'


FactoryBot.define do
  factory :user do
    email { Faker::Internet.email }
    password { Faker::Internet.password(min_length: 8) }
    user_role { [1, 2].sample } # Assuming user_role is either 1 or 2
  end
end

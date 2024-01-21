require 'faker'


FactoryBot.define do
  factory :loan do
    name { Faker::Name.name }
    email { Faker::Internet.email }
    middle_name { Faker::Name.middle_name }
    last_name { Faker::Name.last_name }
    date_of_birth { Faker::Date.birthday }
    amount { Faker::Number.decimal(l_digits: 5, r_digits: 2) }
    purpose { Loan.purposes.keys.sample }
    ssn { Faker::IDNumber.unique.ssn }
    phone_number { Faker::PhoneNumber.phone_number }
    address { Faker::Address.street_address }
    home_number { Faker::PhoneNumber.phone_number }
    street_address2 { Faker::Address.secondary_address }
    city { Faker::Address.city }
    state { Faker::Address.state }
    zip { Faker::Address.zip_code }
    residence_type { Faker::Lorem.word }
    annual_income { Faker::Number.decimal(l_digits: 6, r_digits: 2) }
    employer_name { Faker::Company.name }
    employer_phone { Faker::PhoneNumber.phone_number }
  end
end

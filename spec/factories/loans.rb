# frozen_string_literal: true

# spec/factories/loans.rb

FactoryBot.define do
  factory :loan do
    name { 'Loan Name' }
    email { 'loan@example.com' }
    amount { 1000 }
    purpose { 'Home' }
    date_of_birth { Date.parse('1990-01-01') }
    ssn { '123-45-6789' }
    
  end
  factory :invalid_loan, class: 'Loan' do
    name { nil } 
    email { 'invalid_email' } 
    amount { -1000 } 
    purpose { nil }
    date_of_birth { Date.parse('2100-01-01') } 
    ssn { 'invalid_ssn' }
  end
end

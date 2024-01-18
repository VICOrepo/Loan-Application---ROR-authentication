class Loan < ApplicationRecord
  
    validates :name, presence: true, length: { minimum: 4, maximum: 100 }
    validates :email, presence: true, length: { minimum: 4, maximum: 100 }, format: { with: URI::MailTo::EMAIL_REGEXP }
    validates :middle_name, length: { maximum: 100 }, allow_blank: true 
    validates :last_name, length: { maximum: 100 } 
    validates :date_of_birth, presence: true
    validates :amount, presence: true
    validates :purpose, presence: true, inclusion: { in: %w(Medical_Expenses Gold Education Business Home Vehicle) }
    validates :ssn, presence: true, format: { with: /\A\d{3}-\d{2}-\d{4}\z/, message: "format should be XXX-XX-XXXX" }
    validates :phone_number, presence: true, format: { with: /\A\(\d{3}\) \d{3}-\d{4}\z/, message: "format should be (XXX) XXX-XXXX" }
    validates :address, presence: true, length: { minimum: 4, maximum: 100 }
    validates :home_number, presence: true, format: { with: /\A\(\d{3}\) \d{3}-\d{4}\z/, message: "format should be (XXX) XXX-XXXX" }
    validates :street_address2, length: { maximum: 100 }, allow_blank: true
    validates :city, length: { maximum: 50 }
    validates :state, length: { maximum: 50 }
    validates :zip, presence: true, numericality: { only_integer: true }, length: { is: 5 }
    validates :residence_type, length: { maximum: 50 }, allow_blank: true
    validates :annual_income, presence: true
    validates :employer_name, length: { maximum: 100 }, allow_blank: true
    validates :employer_phone, presence: true, format: { with: /\A\(\d{3}\) \d{3}-\d{4}\z/, message: "format should be (XXX) XXX-XXXX" }
  
    enum purpose: {
      'Medical_Expenses': "Medical Expenses",
      'Gold': "Gold",
      'Education': "Education",
      'Business': "Business",
      'Home': "Home",
      'Vehicle': "Vehicle",
    }
  
  end
  
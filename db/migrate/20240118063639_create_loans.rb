class CreateLoans < ActiveRecord::Migration[7.0]
  def change
    create_table :loans do |t|
      t.string :name
      t.string :email
      t.string :middle_name  # Changed: Use underscore for column names
      t.string :last_name    # Changed: Use underscore for column names
      t.date :date_of_birth  # Added: Date of Birth
      t.string :amount
      t.string :purpose
      t.string :ssn
      t.string :phone_number
      t.string :profession
      t.string :address
      t.string :home_number  # Added: Home Number
      t.string :street_address2  # Added: Street Address 2
      t.string :city  # Added: City
      t.string :state  # Added: State
      t.integer :zip  # Added: Zip
      t.string :residence_type  # Added: Residence Type
      t.string :annual_income  # Added: Annual Income
      t.string :employer_name  # Added: Employer Name
      t.string :employer_phone  # Added: Employer Phone
      t.timestamps
    end
  end
end

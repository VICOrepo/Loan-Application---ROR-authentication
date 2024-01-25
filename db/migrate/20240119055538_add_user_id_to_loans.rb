# frozen_string_literal: true

# Module comment for AddUserIdToLoans
class AddUserIdToLoans < ActiveRecord::Migration[7.0]
  def change
    add_reference :loans, :user, null: false, foreign_key: true
  end
end

# frozen_string_literal: true

# Module comment for AddUserRoleToUsers
class AddUserRoleToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :user_role, :integer, default: 1
  end
end

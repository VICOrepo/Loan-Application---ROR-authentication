# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2024_01_18_091932) do
  create_table "loans", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "middle_name"
    t.string "last_name"
    t.date "date_of_birth"
    t.string "amount"
    t.string "purpose"
    t.string "ssn"
    t.string "phone_number"
    t.string "profession"
    t.string "address"
    t.string "home_number"
    t.string "street_address2"
    t.string "city"
    t.string "state"
    t.integer "zip"
    t.string "residence_type"
    t.string "annual_income"
    t.string "employer_name"
    t.string "employer_phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_role", default: 1
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end

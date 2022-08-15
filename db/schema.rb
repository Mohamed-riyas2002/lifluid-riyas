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

ActiveRecord::Schema.define(version: 2022_08_14_081324) do

  create_table "blood_banks", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "name"
    t.string "parent_hospital", default: "No Parent Organisation", null: false
    t.bigint "phone_number"
    t.string "email"
    t.string "address"
    t.string "state"
    t.string "district"
    t.integer "pincode"
    t.string "Category"
    t.string "website", default: "No website", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "user_id"
    t.index ["user_id"], name: "index_blood_banks_on_user_id"
  end

  create_table "blood_requests", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "patient_name"
    t.integer "age"
    t.string "gender"
    t.string "blood_group"
    t.string "reason"
    t.string "hospital_name"
    t.string "state"
    t.string "district"
    t.string "guardian"
    t.bigint "guardian_number"
    t.string "email"
    t.date "required_before"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "user_id"
    t.integer "blood_bag"
    t.string "request_result"
    t.index ["user_id"], name: "index_blood_requests_on_user_id"
  end

  create_table "donors", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "blood_group"
    t.date "date_of_birth"
    t.date "last_donation_date"
    t.string "gender"
    t.string "state"
    t.string "district"
    t.integer "pincode"
    t.bigint "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_donors_on_user_id"
  end

  create_table "users", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "name"
    t.bigint "phone_number"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "blood_banks", "users"
  add_foreign_key "blood_requests", "users"
  add_foreign_key "donors", "users"
end

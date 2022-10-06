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

ActiveRecord::Schema[7.0].define(version: 2022_10_06_064922) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "appointments", force: :cascade do |t|
    t.bigint "doctor_id", null: false
    t.bigint "patient_id", null: false
    t.string "patient_type"
    t.integer "serial_no"
    t.date "appointment_date"
    t.time "appointment_time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "nurse_id", null: false
    t.index ["doctor_id"], name: "index_appointments_on_doctor_id"
    t.index ["nurse_id"], name: "index_appointments_on_nurse_id"
    t.index ["patient_id"], name: "index_appointments_on_patient_id"
  end

  create_table "doctors", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.integer "phone"
    t.string "email"
    t.string "password_digest"
    t.string "designation"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "nurses", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.integer "phone"
    t.string "email"
    t.string "password_digest"
    t.string "designation"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "patient_contacts", force: :cascade do |t|
    t.bigint "patient_id", null: false
    t.integer "phone"
    t.string "email"
    t.string "address"
    t.string "county"
    t.string "estate"
    t.text "note"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["patient_id"], name: "index_patient_contacts_on_patient_id"
  end

  create_table "patient_vitals", force: :cascade do |t|
    t.bigint "patient_id", null: false
    t.integer "bp_systolic"
    t.integer "bp_diastolic"
    t.integer "temperature"
    t.text "notes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["patient_id"], name: "index_patient_vitals_on_patient_id"
  end

  create_table "patients", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "gender"
    t.date "dob"
    t.string "marital_status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "national_id"
    t.index ["national_id"], name: "index_patients_on_national_id", unique: true
  end

  add_foreign_key "appointments", "doctors"
  add_foreign_key "appointments", "nurses"
  add_foreign_key "appointments", "patients"
  add_foreign_key "patient_contacts", "patients"
  add_foreign_key "patient_vitals", "patients"
end

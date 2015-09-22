# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20150916183208) do

  create_table "animals", force: :cascade do |t|
    t.string   "name"
    t.string   "type_of_animal"
    t.string   "breed"
    t.integer  "age"
    t.integer  "weight"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "appointments", force: :cascade do |t|
    t.string   "customer_name"
    t.boolean  "appoint_remind"
    t.text     "reason"
    t.integer  "doctor_id"
    t.integer  "animal_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.datetime "date"
  end

  add_index "appointments", ["animal_id"], name: "index_appointments_on_animal_id"
  add_index "appointments", ["doctor_id"], name: "index_appointments_on_doctor_id"

  create_table "doctors", force: :cascade do |t|
    t.string   "name"
    t.string   "address"
    t.string   "city"
    t.string   "state"
    t.integer  "zip"
    t.string   "school"
    t.integer  "years_of_practice"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "next_appointments", force: :cascade do |t|
    t.string   "next_date"
    t.integer  "appointment_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "next_appointments", ["appointment_id"], name: "index_next_appointments_on_appointment_id"

end

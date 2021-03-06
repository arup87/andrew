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

ActiveRecord::Schema.define(version: 20150203233545) do

  create_table "appointments", force: true do |t|
    t.datetime "date_of_visit"
    t.string   "reason_for_visit"
    t.integer  "pet_id"
    t.integer  "vet_id"
    t.boolean  "reminder"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "appointments", ["pet_id"], name: "index_appointments_on_pet_id"
  add_index "appointments", ["vet_id"], name: "index_appointments_on_vet_id"

  create_table "customers", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pets", force: true do |t|
    t.string   "name"
    t.string   "type_of_pet"
    t.string   "breed"
    t.integer  "age"
    t.integer  "weight"
    t.datetime "last_visit"
    t.integer  "customer_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "pets", ["customer_id"], name: "index_pets_on_customer_id"

  create_table "vets", force: true do |t|
    t.string   "name"
    t.string   "address"
    t.string   "address_line_two"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.string   "school"
    t.integer  "years_in_practice"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end

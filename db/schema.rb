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

ActiveRecord::Schema.define(version: 20170424013453) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "contacts", force: :cascade do |t|
    t.string   "description"
    t.string   "type"
    t.integer  "employee_id"
    t.integer  "departament_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.index ["departament_id"], name: "index_contacts_on_departament_id", using: :btree
    t.index ["employee_id"], name: "index_contacts_on_employee_id", using: :btree
  end

  create_table "departaments", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "employees", force: :cascade do |t|
    t.string   "name"
    t.integer  "registration"
    t.string   "email"
    t.integer  "departament_id"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["departament_id"], name: "index_employees_on_departament_id", using: :btree
  end

end

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

ActiveRecord::Schema.define(version: 20170512202008) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"
  enable_extension "hstore"

  create_table "admins", force: :cascade do |t|
    t.string   "admin_name"
    t.integer  "admin_registration"
    t.string   "admin_email"
    t.string   "password_digest"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "contacts", force: :cascade do |t|
    t.string   "contact_description"
    t.string   "contact_type"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.integer  "employee_id"
    t.integer  "departament_id"
    t.index ["departament_id"], name: "index_contacts_on_departament_id", using: :btree
    t.index ["employee_id"], name: "index_contacts_on_employee_id", using: :btree
  end

  create_table "departaments", force: :cascade do |t|
    t.string   "departament_name"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "employees", force: :cascade do |t|
    t.string   "employee_name"
    t.integer  "employee_registration"
    t.string   "employee_email"
    t.string   "password"
    t.datetime "created_at",                            null: false
    t.datetime "updated_at",                            null: false
    t.integer  "departament_id"
    t.boolean  "is_admin",              default: false
    t.index ["departament_id"], name: "index_employees_on_departament_id", using: :btree
  end

end

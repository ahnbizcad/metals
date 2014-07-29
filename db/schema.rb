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

ActiveRecord::Schema.define(version: 20140729205155) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "claims", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "consignees", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
  end

  add_index "consignees", ["name"], name: "index_consignees_on_name", using: :btree

  create_table "containers", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "container_number"
  end

  add_index "containers", ["container_number"], name: "index_containers_on_container_number", using: :btree

  create_table "customers", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
  end

  add_index "customers", ["name"], name: "index_customers_on_name", using: :btree

  create_table "items", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "packings", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "packing_type"
  end

  add_index "packings", ["packing_type"], name: "index_packings_on_packing_type", using: :btree

  create_table "port_of_discharges", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "city"
    t.string   "country"
  end

  create_table "port_of_loadings", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "city"
    t.string   "country"
  end

  create_table "purchases", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.date     "date_of_purchase"
  end

  add_index "purchases", ["date_of_purchase"], name: "index_purchases_on_date_of_purchase", using: :btree

  create_table "sales", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "shipments", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "suppliers", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
  end

  add_index "suppliers", ["name"], name: "index_suppliers_on_name", using: :btree

  create_table "term_of_prices", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "term"
    t.string   "text"
    t.string   "date"
  end

  create_table "users", force: true do |t|
    t.string   "email",                  default: "",    null: false
    t.string   "encrypted_password",     default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "admin",                  default: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end

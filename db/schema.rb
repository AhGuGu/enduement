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

ActiveRecord::Schema.define(version: 20170311131323) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "unit_trusts", force: :cascade do |t|
    t.string   "name"
    t.string   "fund_house"
    t.string   "sector"
    t.string   "assets"
    t.decimal  "risk_return_ratio"
    t.decimal  "sharpe_ratio"
    t.date     "date_invested"
    t.decimal  "amount_invested"
    t.decimal  "initial_nav"
    t.decimal  "inital_number_units"
    t.date     "date_sold"
    t.decimal  "nav_sold"
    t.decimal  "units_sold"
    t.decimal  "amount_received"
    t.decimal  "platform_fees"
    t.decimal  "wrap_fees"
    t.integer  "user_id"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.index ["user_id"], name: "index_unit_trusts_on_user_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "salutation"
    t.string   "first_name"
    t.string   "last_name"
    t.date     "dob"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "ContactNumber"
  end

  add_foreign_key "unit_trusts", "users"
end

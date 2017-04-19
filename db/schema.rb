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

ActiveRecord::Schema.define(version: 20170419155727) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bank_accounts", force: :cascade do |t|
    t.string   "name"
    t.integer  "balance"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "deposits", force: :cascade do |t|
    t.integer  "deposit_amount"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "bank_account_id"
  end

  add_index "deposits", ["bank_account_id"], name: "index_deposits_on_bank_account_id", using: :btree

  create_table "withdrawals", force: :cascade do |t|
    t.integer  "withdrawal_amount"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.integer  "bank_account_id"
  end

  add_index "withdrawals", ["bank_account_id"], name: "index_withdrawals_on_bank_account_id", using: :btree

  add_foreign_key "deposits", "bank_accounts"
  add_foreign_key "withdrawals", "bank_accounts"
end

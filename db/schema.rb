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

ActiveRecord::Schema.define(version: 20160911054108) do

  create_table "groups", force: true do |t|
    t.string   "name",                       null: false
    t.boolean  "formed",     default: false, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "admin_id",                   null: false
  end

  create_table "netflix_accounts", force: true do |t|
    t.string   "username",                  null: false
    t.string   "password",                  null: false
    t.integer  "group_id",                  null: false
    t.datetime "registered_on",             null: false
    t.datetime "expires_on",                null: false
    t.integer  "amount",        default: 0, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "payments", force: true do |t|
    t.string   "key"
    t.string   "through"
    t.decimal  "amount",     precision: 10, scale: 0, default: 0
    t.integer  "user_id"
    t.integer  "group_id"
    t.boolean  "lock"
    t.datetime "created_at"
    t.datetime "updated_at"
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
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
    t.string   "name"
    t.datetime "date_of_birth"
    t.boolean  "is_female",              default: false
    t.boolean  "status",                 default: true,  null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  create_table "users_groups", force: true do |t|
    t.integer  "user_id",                   null: false
    t.integer  "group_id",                  null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "status",     default: true, null: false
  end

end

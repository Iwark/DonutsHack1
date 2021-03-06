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

ActiveRecord::Schema.define(version: 20141123123732) do

  create_table "room_users", force: true do |t|
    t.integer  "user_id"
    t.integer  "room_id"
    t.integer  "status"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "rooms", force: true do |t|
    t.string   "title"
    t.integer  "status"
    t.string   "place"
    t.string   "invitation_code"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.datetime "hold_at"
    t.integer  "user_id"
    t.string   "image"
  end

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "gender"
    t.string   "introduction"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",       default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "provider",            default: "", null: false
    t.string   "uid",                 default: "", null: false
    t.string   "image"
  end

  add_index "users", ["uid", "provider"], name: "index_users_on_uid_and_provider", unique: true, using: :btree

end

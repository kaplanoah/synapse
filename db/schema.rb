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

ActiveRecord::Schema.define(version: 20140206035548) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "newpapers", force: true do |t|
    t.integer  "x"
    t.integer  "y"
    t.integer  "z"
    t.text     "doi"
    t.text     "coordinatesystem"
    t.text     "journal"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "title"
    t.string   "author"
    t.string   "email"
    t.string   "phone"
  end

  create_table "papers", force: true do |t|
    t.integer  "x"
    t.integer  "y"
    t.integer  "z"
    t.text     "doi"
    t.text     "coordinatesystem"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "journal"
  end

  create_table "searches", force: true do |t|
    t.string   "x"
    t.string   "y"
    t.string   "z"
    t.string   "range"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
  end

  add_index "searches", ["user_id"], name: "index_searches_on_user_id", using: :btree

  create_table "titles", force: true do |t|
    t.string   "title"
    t.string   "doi"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "firstname"
    t.string   "lastname"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "remember_token"
  end

  add_index "users", ["remember_token"], name: "index_users_on_remember_token", using: :btree

end

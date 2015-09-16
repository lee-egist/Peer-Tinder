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

ActiveRecord::Schema.define(version: 20150916051438) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "availabilities", force: true do |t|
    t.integer  "bootcoder_id"
    t.integer  "day_id"
    t.integer  "hour_id"
    t.string   "frequency"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "availabilities", ["bootcoder_id"], name: "index_availabilities_on_bootcoder_id", using: :btree

  create_table "bootcoders", force: true do |t|
    t.string   "handle"
    t.string   "email"
    t.string   "phone"
    t.string   "image_url"
    t.string   "password_digest"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "challenges", force: true do |t|
    t.string   "name"
    t.integer  "time_length"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "days", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "hours", force: true do |t|
    t.string   "hrf"
    t.string   "suffix"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pairing_sessions", force: true do |t|
    t.integer  "bootcoder_id"
    t.integer  "pair_id"
    t.integer  "challenge_id"
    t.datetime "session_date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "pairing_sessions", ["bootcoder_id"], name: "index_pairing_sessions_on_bootcoder_id", using: :btree

end

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

ActiveRecord::Schema.define(version: 20160301205026) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "attendances", force: :cascade do |t|
    t.integer  "event_id"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "attendances", ["event_id"], name: "index_attendances_on_event_id", using: :btree
  add_index "attendances", ["user_id"], name: "index_attendances_on_user_id", using: :btree

  create_table "events", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.string   "image"
    t.boolean  "rsvp"
    t.boolean  "admission"
    t.string   "organization"
    t.date     "date"
    t.time     "time"
    t.string   "phone"
    t.string   "email"
    t.string   "url"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "topic_id"
    t.integer  "location_id"
    t.integer  "user_id"
  end

  add_index "events", ["location_id"], name: "index_events_on_location_id", using: :btree
  add_index "events", ["topic_id"], name: "index_events_on_topic_id", using: :btree
  add_index "events", ["user_id"], name: "index_events_on_user_id", using: :btree

  create_table "infos", force: :cascade do |t|
    t.string   "title"
    t.string   "author"
    t.string   "source"
    t.text     "description"
    t.date     "origin_date"
    t.string   "link"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "topic_id"
    t.integer  "sphere_id"
  end

  add_index "infos", ["sphere_id"], name: "index_infos_on_sphere_id", using: :btree
  add_index "infos", ["topic_id"], name: "index_infos_on_topic_id", using: :btree

  create_table "locations", force: :cascade do |t|
    t.string   "name"
    t.string   "street_address"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "reviews", force: :cascade do |t|
    t.text     "comment"
    t.integer  "rating"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "event_id"
    t.integer  "user_id"
  end

  add_index "reviews", ["event_id"], name: "index_reviews_on_event_id", using: :btree
  add_index "reviews", ["user_id"], name: "index_reviews_on_user_id", using: :btree

  create_table "spheres", force: :cascade do |t|
    t.string   "area"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "topics", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_interests", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "topic_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "user_interests", ["topic_id"], name: "index_user_interests_on_topic_id", using: :btree
  add_index "user_interests", ["user_id"], name: "index_user_interests_on_user_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "fname"
    t.string   "lname"
    t.string   "email"
    t.string   "username"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "remember_digest"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree

  add_foreign_key "attendances", "events"
  add_foreign_key "attendances", "users"
  add_foreign_key "events", "locations"
  add_foreign_key "events", "topics"
  add_foreign_key "events", "users"
  add_foreign_key "infos", "spheres"
  add_foreign_key "infos", "topics"
  add_foreign_key "reviews", "events"
  add_foreign_key "reviews", "users"
  add_foreign_key "user_interests", "topics"
  add_foreign_key "user_interests", "users"
end

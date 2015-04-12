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

ActiveRecord::Schema.define(version: 20150411143725) do

  create_table "code_samples", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.date     "date_completed"
    t.string   "url"
    t.integer  "user_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "code_samples", ["user_id"], name: "index_code_samples_on_user_id"

  create_table "companies", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.string   "address_1"
    t.string   "address_2"
    t.string   "city"
    t.string   "postcode"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "state_id"
  end

  add_index "companies", ["state_id"], name: "index_companies_on_state_id"

  create_table "jobs", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "company_id"
    t.date     "start_date"
    t.date     "end_date"
    t.integer  "salary"
    t.decimal  "wage"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "location_id"
    t.string   "title"
    t.text     "description"
  end

  add_index "jobs", ["company_id"], name: "index_jobs_on_company_id"
  add_index "jobs", ["location_id"], name: "index_jobs_on_location_id"
  add_index "jobs", ["user_id"], name: "index_jobs_on_user_id"

  create_table "languages", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "locations", force: :cascade do |t|
    t.decimal  "cost_of_living_index"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  create_table "skills", force: :cascade do |t|
    t.integer  "language_id"
    t.integer  "rating"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "parent_id"
    t.string   "parent_type"
  end

  add_index "skills", ["language_id"], name: "index_skills_on_language_id"
  add_index "skills", ["parent_type", "parent_id"], name: "index_skills_on_parent_type_and_parent_id"

  create_table "states", force: :cascade do |t|
    t.string   "name"
    t.string   "abbreviation"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "username"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "phone"
    t.string   "address_1"
    t.string   "address_2"
    t.string   "city"
    t.string   "postcode"
    t.boolean  "is_admin"
    t.integer  "profile_views"
    t.text     "blurb"
    t.string   "title"
    t.integer  "state_id"
  end

  add_index "users", ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true
  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  add_index "users", ["state_id"], name: "index_users_on_state_id"
  add_index "users", ["username"], name: "index_users_on_username", unique: true

end

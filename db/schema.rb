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

ActiveRecord::Schema.define(version: 2019_02_17_160336) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "arch_request_approvals", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "arch_request_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["arch_request_id"], name: "index_arch_request_approvals_on_arch_request_id"
    t.index ["user_id"], name: "index_arch_request_approvals_on_user_id"
  end

  create_table "arch_requests", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "street"
    t.string "city"
    t.string "state"
    t.string "zip"
    t.string "description"
    t.datetime "start_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "confirmation_code"
    t.string "email"
    t.boolean "confirmed"
    t.string "status"
  end

  create_table "calendars", force: :cascade do |t|
    t.string "title"
    t.string "description"
    t.string "url"
    t.datetime "start_date"
    t.datetime "end_date"
    t.string "location"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "reminder_date"
  end

  create_table "jwt_blacklist", force: :cascade do |t|
    t.string "jti", null: false
    t.index ["jti"], name: "index_jwt_blacklist_on_jti"
  end

  create_table "news", force: :cascade do |t|
    t.string "content"
    t.datetime "display_until"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "first_name"
    t.string "last_name"
    t.string "street"
    t.string "city"
    t.string "state"
    t.integer "zip"
    t.string "position"
    t.string "bio"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "arch_request_approvals", "arch_requests"
  add_foreign_key "arch_request_approvals", "users"
end

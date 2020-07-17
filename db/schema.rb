# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_07_16_032156) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "ownpages", force: :cascade do |t|
    t.string "image"
    t.text "content"
    t.integer "user_id"
    t.integer "schedule_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "schedule_ownpages", force: :cascade do |t|
    t.bigint "ownpage_id", null: false
    t.bigint "schedule_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["ownpage_id"], name: "index_schedule_ownpages_on_ownpage_id"
    t.index ["schedule_id"], name: "index_schedule_ownpages_on_schedule_id"
  end

  create_table "schedules", force: :cascade do |t|
    t.string "name", null: false
    t.string "content"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "user_schedules", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "schedule_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["schedule_id"], name: "index_user_schedules_on_schedule_id"
    t.index ["user_id"], name: "index_user_schedules_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["name"], name: "index_users_on_name", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "schedule_ownpages", "ownpages"
  add_foreign_key "schedule_ownpages", "schedules"
  add_foreign_key "user_schedules", "schedules"
  add_foreign_key "user_schedules", "users"
end

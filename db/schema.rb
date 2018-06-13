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

ActiveRecord::Schema.define(version: 2018_06_13_005629) do

  create_table "diseases", force: :cascade do |t|
    t.string "disease_name"
    t.float "disease_level"
    t.string "disease_description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "users_id"
    t.integer "elders_id"
    t.index ["elders_id"], name: "index_diseases_on_elders_id"
    t.index ["users_id"], name: "index_diseases_on_users_id"
  end

  create_table "elders", force: :cascade do |t|
    t.string "elder_name"
    t.string "elder_first_name"
    t.string "elder_last_name"
    t.string "elder_bloond_type"
    t.date "elder_birthdate"
    t.decimal "elder_weight"
    t.decimal "elder_height"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "relatives", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.integer "elder_id"
    t.index ["elder_id"], name: "index_relatives_on_elder_id"
    t.index ["user_id"], name: "index_relatives_on_user_id"
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
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "user_name"
    t.string "user_first_name"
    t.string "user_last_name"
    t.string "user_phone"
    t.integer "user_role"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end

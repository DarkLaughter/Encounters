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

ActiveRecord::Schema.define(version: 2020_05_12_222949) do

  create_table "appearances", force: :cascade do |t|
    t.string "movie"
    t.string "tv_show"
    t.string "fiction"
    t.string "non_fiction"
    t.integer "cryptid_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["cryptid_id"], name: "index_appearances_on_cryptid_id"
  end

  create_table "comments", force: :cascade do |t|
    t.text "comment"
    t.date "date"
    t.integer "user_id"
    t.integer "encounter_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["encounter_id"], name: "index_comments_on_encounter_id"
  end

  create_table "cryptids", force: :cascade do |t|
    t.string "name"
    t.string "category"
    t.string "country"
    t.text "lore"
    t.string "img_url"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "encounters", force: :cascade do |t|
    t.string "location"
    t.date "date"
    t.text "story"
    t.integer "user_id", null: false
    t.integer "cryptid_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["cryptid_id"], name: "index_encounters_on_cryptid_id"
    t.index ["user_id"], name: "index_encounters_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "username"
    t.string "password_digest"
    t.integer "age"
    t.string "contact"
    t.string "background"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "appearances", "cryptids"
  add_foreign_key "comments", "encounters"
  add_foreign_key "encounters", "cryptids"
  add_foreign_key "encounters", "users"
end

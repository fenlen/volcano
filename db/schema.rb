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

ActiveRecord::Schema.define(version: 2018_11_25_235621) do

  create_table "eruptions", force: :cascade do |t|
    t.integer "Year"
    t.integer "Month"
    t.integer "Day"
    t.boolean "Tsu"
    t.boolean "Eq"
    t.text "Agent"
    t.decimal "Latitude"
    t.decimal "Longitude"
    t.integer "Deaths"
    t.integer "uniq_volcano_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["uniq_volcano_id"], name: "index_eruptions_on_uniq_volcano_id"
  end

  create_table "uniq_volcanos", force: :cascade do |t|
    t.text "Name"
    t.text "Location"
    t.text "Country"
    t.decimal "Latitude"
    t.decimal "Longitude"
    t.integer "Elevation"
    t.text "Type"
    t.text "Status"
    t.text "Time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password_digest"
    t.boolean "admin", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["name"], name: "index_users_on_name", unique: true
  end

end

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

ActiveRecord::Schema.define(version: 20160509010256) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "citizens", id: :serial, force: :cascade do |t|
    t.string "firstname"
    t.string "lastname"
    t.string "candidate"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "ld_delegate"
    t.integer "ld_alternate_number"
    t.boolean "ld_checked_in"
    t.boolean "ld_seated_alternate"
    t.string "email"
    t.string "phone"
    t.string "address"
    t.string "city"
    t.string "zip"
    t.integer "precinct_id"
    t.string "gender"
    t.index ["gender"], name: "index_citizens_on_gender"
    t.index ["precinct_id"], name: "index_citizens_on_precinct_id"
  end

  create_table "congressional_districts", id: :serial, force: :cascade do |t|
    t.string "name"
    t.integer "numberOfDelegates"
    t.integer "numberOfAlternates"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "legislative_districts", id: :serial, force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "precincts", id: :serial, force: :cascade do |t|
    t.string "name"
    t.integer "numberOfDelegates"
    t.integer "numberOfAlternates"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "congressional_district_id"
    t.integer "legislative_district_id"
    t.index ["congressional_district_id"], name: "index_precincts_on_congressional_district_id"
    t.index ["legislative_district_id"], name: "index_precincts_on_legislative_district_id"
  end

  add_foreign_key "citizens", "precincts"
  add_foreign_key "precincts", "congressional_districts"
  add_foreign_key "precincts", "legislative_districts"
end

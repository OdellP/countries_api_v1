# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2022_02_27_031733) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "countries", force: :cascade do |t|
    t.string "capital", null: false
    t.string "cca2", null: false
    t.string "cca3", null: false
    t.string "flag", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "name_id"
    t.string "ccn3"
    t.string "cioc"
    t.boolean "independent", default: true
    t.string "status"
    t.boolean "un_member", default: true
    t.index ["name_id"], name: "index_countries_on_name_id"
  end

  create_table "names", force: :cascade do |t|
    t.string "common", null: false
    t.string "official", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "country_id"
  end

  create_table "native_names", force: :cascade do |t|
    t.string "official", null: false
    t.string "common", null: false
    t.bigint "name_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["name_id"], name: "index_native_names_on_name_id"
  end

  add_foreign_key "native_names", "names"
end

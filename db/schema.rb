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

ActiveRecord::Schema.define(version: 2019_09_30_141812) do
  create_table "items", force: :cascade do |t|
    t.string "name"
    t.string "brand"
    t.string "type"
    t.integer "price_in_cents"
    t.string "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "deck_length"
    t.integer "deck_width"
    t.integer "deck_material"
    t.string "deck_mounting_type"
    t.integer "trucks_size_in_mm"
    t.boolean "trucks_standard_kingpin?"
    t.integer "trucks_axel_degree"
    t.string "color"
    t.integer "wheels_durometer"
    t.integer "wheels_size_in_mm"
    t.boolean "wheels_center_cut?"
    t.boolean "bearings_open?"
    t.boolean "bearings_abec?"
    t.integer "grip_tape_length"
    t.integer "grip_tape_width"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end
end

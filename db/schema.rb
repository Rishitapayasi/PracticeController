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

ActiveRecord::Schema[7.0].define(version: 2023_08_28_125149) do
  create_table "bookings", force: :cascade do |t|
    t.date "check_in"
    t.date "check_out"
    t.integer "room_id", null: false
    t.integer "hotel_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["hotel_id"], name: "index_bookings_on_hotel_id"
    t.index ["room_id"], name: "index_bookings_on_room_id"
  end

  create_table "hotels", force: :cascade do |t|
    t.string "name"
    t.string "location"
    t.integer "number_of_rooms"
    t.integer "owner_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "status"
  end

  create_table "rooms", force: :cascade do |t|
    t.integer "room_number"
    t.integer "room_price"
    t.integer "hotel_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["hotel_id"], name: "index_rooms_on_hotel_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password"
    t.string "type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "owner_id"
  end

  add_foreign_key "bookings", "hotels"
  add_foreign_key "bookings", "rooms"
  add_foreign_key "rooms", "hotels"
end

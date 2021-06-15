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

ActiveRecord::Schema.define(version: 2021_06_15_112438) do

  create_table "dishes", force: :cascade do |t|
    t.string "name"
    t.float "price"
    t.integer "preptime"
    t.text "descritpion"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "menus", force: :cascade do |t|
    t.float "price"
    t.string "name"
    t.integer "dishe_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["dishe_id"], name: "index_menus_on_dishe_id"
  end

  create_table "orders", force: :cascade do |t|
    t.integer "number"
    t.float "price"
    t.integer "rstaurant_id", null: false
    t.integer "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["rstaurant_id"], name: "index_orders_on_rstaurant_id"
    t.index ["user_id"], name: "index_orders_on_user_id"
  end

  create_table "restaurants", force: :cascade do |t|
    t.string "speciality"
    t.string "full_name"
    t.string "phone_number"
    t.string "chef"
    t.integer "menu_id", null: false
    t.integer "dishe_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["dishe_id"], name: "index_restaurants_on_dishe_id"
    t.index ["menu_id"], name: "index_restaurants_on_menu_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "menus", "dishes", column: "dishe_id"
  add_foreign_key "orders", "rstaurants"
  add_foreign_key "orders", "users"
  add_foreign_key "restaurants", "dishes", column: "dishe_id"
  add_foreign_key "restaurants", "menus"
end

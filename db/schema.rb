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

ActiveRecord::Schema.define(version: 2021_06_24_155738) do

  create_table "dishes", force: :cascade do |t|
    t.string "name"
    t.float "price"
    t.integer "preptime"
    t.string "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "menus", force: :cascade do |t|
    t.float "price"
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "orders", force: :cascade do |t|
    t.integer "number"
    t.float "price"
    t.integer "restaurant_id", null: false
    t.integer "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["restaurant_id"], name: "index_orders_on_restaurant_id"
    t.index ["user_id"], name: "index_orders_on_user_id"
  end

  create_table "restaurant_dishes", force: :cascade do |t|
    t.integer "dishe_id", null: false
    t.integer "restaurant_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["dishe_id"], name: "index_restaurant_dishes_on_dishe_id"
    t.index ["restaurant_id"], name: "index_restaurant_dishes_on_restaurant_id"
  end

  create_table "restaurant_menus", force: :cascade do |t|
    t.integer "menu_id", null: false
    t.integer "restaurant_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["menu_id"], name: "index_restaurant_menus_on_menu_id"
    t.index ["restaurant_id"], name: "index_restaurant_menus_on_restaurant_id"
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
    t.string "email"
    t.string "address"
    t.index ["dishe_id"], name: "index_restaurants_on_dishe_id"
    t.index ["menu_id"], name: "index_restaurants_on_menu_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "orders", "restaurants"
  add_foreign_key "orders", "users"
  add_foreign_key "restaurant_dishes", "dishes", column: "dishe_id"
  add_foreign_key "restaurant_dishes", "restaurants"
  add_foreign_key "restaurant_menus", "menus"
  add_foreign_key "restaurant_menus", "restaurants"
  add_foreign_key "restaurants", "dishes", column: "dishe_id"
  add_foreign_key "restaurants", "menus"
end

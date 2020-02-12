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

ActiveRecord::Schema.define(version: 2020_02_12_224613) do

  create_table "checks", force: :cascade do |t|
    t.string "paid_status", default: "unpaid"
    t.integer "server_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.decimal "tip", precision: 8, scale: 2
    t.index ["server_id"], name: "index_checks_on_server_id"
  end

  create_table "foods", force: :cascade do |t|
    t.string "name"
    t.decimal "price", precision: 8, scale: 2
    t.string "food_type"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "modifications", force: :cascade do |t|
    t.text "note"
    t.decimal "price", precision: 8, scale: 2, default: "0.0"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "order_id"
  end

  create_table "orders", force: :cascade do |t|
    t.integer "check_id", null: false
    t.integer "food_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["check_id"], name: "index_orders_on_check_id"
    t.index ["food_id"], name: "index_orders_on_food_id"
  end

  create_table "servers", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "pin"
  end

  add_foreign_key "checks", "servers"
  add_foreign_key "orders", "checks"
  add_foreign_key "orders", "foods"
end

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

ActiveRecord::Schema.define(version: 2020_07_17_082757) do

  create_table "cart_items", force: :cascade do |t|
    t.integer "customer_id"
    t.integer "item_id"
    t.integer "item_quantity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "genres", force: :cascade do |t|
    t.string "name"
    t.boolean "is_active"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "items", force: :cascade do |t|
    t.integer "genre_id"
    t.text "description"
    t.string "name"
    t.integer "price"
    t.string "image_id"
    t.boolean "is_sale_status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "order_items", force: :cascade do |t|
    t.integer "item_id"
    t.integer "order_id"
    t.integer "product_status"
    t.integer "price"
    t.integer "quantity"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "orders", force: :cascade do |t|
    t.integer "customer_id"
    t.integer "pay_method"
    t.integer "status"
    t.integer "freight"
    t.integer "total"
    t.string "ship_name"
    t.string "ship_postcode"
    t.string "ship_address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ships", force: :cascade do |t|
    t.integer "customer_id"
    t.string "address"
    t.string "name"
    t.string "code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
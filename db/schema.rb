# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20141210054251) do

  create_table "events", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "flower_arrangements", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "quantity"
    t.integer  "event_id"
    t.decimal  "cost"
  end

  add_index "flower_arrangements", ["event_id"], name: "index_flower_arrangements_on_event_id"

  create_table "flower_items", force: true do |t|
    t.integer  "quantity"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "flower_id"
    t.integer  "flower_arrangement_id"
  end

  add_index "flower_items", ["flower_arrangement_id"], name: "index_flower_items_on_flower_arrangement_id"
  add_index "flower_items", ["flower_id"], name: "index_flower_items_on_flower_id"

  create_table "flowers", force: true do |t|
    t.string   "name"
    t.decimal  "cost"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "rental_items", force: true do |t|
    t.integer  "quantity"
    t.integer  "rental_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "event_id"
  end

  add_index "rental_items", ["event_id"], name: "index_rental_items_on_event_id"
  add_index "rental_items", ["rental_id"], name: "index_rental_items_on_rental_id"

  create_table "rentals", force: true do |t|
    t.string   "name"
    t.decimal  "cost"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end

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

ActiveRecord::Schema.define(version: 2019_03_25_190947) do

  create_table "cities", force: :cascade do |t|
    t.string "name"
    t.string "region"
    t.string "country"
  end

  create_table "employers", force: :cascade do |t|
    t.string "name"
    t.string "industry"
    t.string "size"
    t.string "description"
    t.string "products"
  end

  create_table "people", force: :cascade do |t|
    t.string "name"
    t.datetime "brithday"
  end

  create_table "positions", force: :cascade do |t|
    t.string "title"
    t.string "description"
    t.integer "person_id"
    t.integer "employers_id"
    t.integer "city_id"
    t.datetime "start"
    t.datetime "finish"
    t.index ["city_id"], name: "index_positions_on_city_id"
    t.index ["employers_id"], name: "index_positions_on_employers_id"
    t.index ["person_id"], name: "index_positions_on_person_id"
  end

end
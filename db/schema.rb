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

ActiveRecord::Schema.define(version: 20160915173535) do

  create_table "cuisines", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "food_preferences", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "food_types", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "recipes", force: :cascade do |t|
    t.string   "title"
    t.string   "cooking_time"
    t.string   "level_of_difficulty"
    t.integer  "food_type_id"
    t.integer  "food_preference_id"
    t.integer  "cuisine_id"
    t.text     "ingredients"
    t.text     "procedure"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.index ["cuisine_id"], name: "index_recipes_on_cuisine_id"
    t.index ["food_preference_id"], name: "index_recipes_on_food_preference_id"
    t.index ["food_type_id"], name: "index_recipes_on_food_type_id"
  end

end

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

ActiveRecord::Schema.define(version: 2019_04_02_094737) do

  create_table "competences", force: :cascade do |t|
    t.string "comp_img"
    t.string "comp_title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "homes", force: :cascade do |t|
    t.string "nav_logo"
    t.string "car_img_competences"
    t.string "car_img_projets"
    t.string "car_img_appli"
    t.string "car_title_competences"
    t.string "car_title_projets"
    t.string "car_title_appli"
    t.text "car_description_competences"
    t.text "car_description_projets"
    t.text "car_description_appli"
    t.string "pres_title"
    t.text "pres_description"
    t.string "pres_img"
    t.boolean "is_index"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "projets", force: :cascade do |t|
    t.string "projet_img"
    t.string "projet_title"
    t.text "projet_description"
    t.string "projet_link"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end

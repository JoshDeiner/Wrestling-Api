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

ActiveRecord::Schema.define(version: 2018_07_05_225540) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "books", force: :cascade do |t|
    t.string "title"
    t.string "description"
    t.string "link"
    t.string "author"
    t.string "image"
    t.integer "book_id"
    t.string "category_id"
    t.string "integer"
  end

  create_table "categories", force: :cascade do |t|
    t.string "title"
  end

  create_table "documentaries", force: :cascade do |t|
    t.string "title"
    t.string "description"
    t.string "link"
    t.string "author"
    t.string "image"
    t.integer "documentary_id"
    t.integer "category_id"
  end

  create_table "foods", force: :cascade do |t|
    t.string "title"
    t.string "description"
    t.string "link"
    t.string "author"
    t.string "image"
    t.integer "food_habit_id"
    t.integer "category_id"
  end

  create_table "memorable_wrestlers", force: :cascade do |t|
    t.string "name"
    t.string "bio"
    t.string "highlights"
    t.integer "memorable_wrestler_id"
    t.integer "category_id"
  end

  create_table "mental_preparations", force: :cascade do |t|
    t.string "title"
    t.string "description"
    t.string "link"
    t.string "author"
    t.string "image"
    t.string "mental_preparation_id"
    t.string "integer"
    t.integer "category_id"
  end

  create_table "more_seasons", force: :cascade do |t|
    t.string "title"
    t.string "description"
    t.string "link"
    t.string "author"
    t.string "image"
    t.string "more_seasons_id"
    t.integer "category_id"
  end

  create_table "motivationals", force: :cascade do |t|
    t.string "title"
    t.string "description"
    t.string "author"
    t.string "link"
    t.string "image"
    t.integer "motivational_id"
    t.integer "category_id"
  end

  create_table "special_matches", force: :cascade do |t|
    t.string "description"
    t.string "link"
    t.string "image"
    t.integer "match_id"
    t.string "title"
    t.integer "category_id"
    t.integer "checked_out_count"
  end

  create_table "technique_dvds", force: :cascade do |t|
    t.string "title"
    t.string "description"
    t.string "link"
    t.string "author"
    t.string "image"
    t.integer "technique_dvd_id"
    t.integer "category_id"
  end

  create_table "technique_open_videos", force: :cascade do |t|
    t.string "title"
    t.string "description"
    t.string "link"
    t.string "author"
    t.string "image"
    t.integer "technique_open_videos_id"
    t.integer "category_id"
  end

end

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

ActiveRecord::Schema.define(version: 3) do

  create_table "actors", force: :cascade do |t|
    t.string "name"
    t.integer "net_worth"
    t.integer "age"
  end

  create_table "characters", force: :cascade do |t|
    t.integer "movie_id"
    t.integer "actor_id"
    t.string "name"
  end

  create_table "movies", force: :cascade do |t|
    t.string "title"
    t.string "description"
    t.string "genre"
    t.string "release_date"
    t.integer "run_time"
  end

end

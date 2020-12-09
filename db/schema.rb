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

ActiveRecord::Schema.define(version: 2020_12_04_205059) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bets", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "game_id", null: false
    t.bigint "week_id", null: false
    t.string "cover"
    t.string "correct"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["game_id"], name: "index_bets_on_game_id"
    t.index ["user_id"], name: "index_bets_on_user_id"
    t.index ["week_id"], name: "index_bets_on_week_id"
  end

  create_table "games", force: :cascade do |t|
    t.bigint "week_id", null: false
    t.string "home_team"
    t.string "away_team"
    t.string "home_ranking"
    t.string "away_ranking"
    t.float "spread"
    t.string "favorite"
    t.datetime "start_time"
    t.integer "home_score"
    t.integer "away_score"
    t.string "cover"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["week_id"], name: "index_games_on_week_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name", null: false
    t.string "email", null: false
    t.string "username", null: false
    t.string "password_digest", null: false
    t.boolean "paid", default: false
    t.boolean "active"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "weeks", force: :cascade do |t|
    t.string "name"
    t.datetime "start_date"
    t.boolean "current"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end

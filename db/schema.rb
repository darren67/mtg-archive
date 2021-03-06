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

ActiveRecord::Schema.define(version: 20171106115454) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cards", force: :cascade do |t|
    t.integer  "cardID"
    t.integer  "cardNumber"
    t.integer  "setTotal"
    t.text     "cardColour"
    t.text     "cardName"
    t.text     "setName"
    t.text     "cardType"
    t.text     "powerTough"
    t.text     "castingCost"
    t.text     "cardText"
    t.text     "artist"
    t.text     "rarity"
    t.string   "image"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "decks", force: :cascade do |t|
    t.integer  "cardID"
    t.integer  "deckID"
    t.datetime "dateCreated"
    t.text     "deckName"
    t.text     "deckType"
    t.text     "deckDescription"
    t.integer  "totalCards"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "qty"
  end

end

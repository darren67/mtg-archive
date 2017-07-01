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

ActiveRecord::Schema.define(version: 20170611122719) do

  create_table "cards", force: :cascade do |t|
    t.integer  "cardID"
    t.integer  "setTotal"
    t.text     "setName"
    t.text     "cardName"
    t.text     "cardType"
    t.text     "powerTough"
    t.text     "castingCost"
    t.text     "cardText"
    t.text     "artist"
    t.text     "rarity"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "image"
  end

# Could not dump table "cards1" because of following NoMethodError
#   undefined method `[]' for nil:NilClass

end

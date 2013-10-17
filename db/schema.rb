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

ActiveRecord::Schema.define(version: 20131014072320) do

  create_table "albums", force: true do |t|
    t.boolean  "nsfw"
    t.integer  "reddit_score"
    t.integer  "category_id"
    t.string   "url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "categories", force: true do |t|
    t.string   "name"
    t.boolean  "nsfw"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "channels", force: true do |t|
    t.string   "name"
    t.integer  "user_id"
    t.text     "model"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "images", force: true do |t|
    t.string   "url"
    t.integer  "reddit_score"
    t.string   "subreddit"
    t.boolean  "reported",     default: false
    t.boolean  "nsfw"
    t.boolean  "gif"
    t.integer  "category_id"
    t.integer  "album_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "views", force: true do |t|
    t.integer  "channel_id"
    t.integer  "image_id"
    t.boolean  "liked"
    t.boolean  "saved",      default: false
    t.integer  "count",      default: 0
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end

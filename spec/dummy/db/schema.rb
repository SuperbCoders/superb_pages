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

ActiveRecord::Schema.define(version: 20140903172858) do

  create_table "meta_blocks", force: true do |t|
    t.integer  "object_id"
    t.string   "object_type"
    t.string   "title"
    t.text     "description"
    t.text     "keywords"
    t.text     "javascript"
    t.string   "fb_image"
    t.string   "fb_title"
    t.text     "fb_description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "meta_blocks", ["object_id", "object_type"], name: "index_meta_blocks_on_object_id_and_object_type"

  create_table "pages", force: true do |t|
    t.string   "slug"
    t.string   "title"
    t.text     "text"
    t.boolean  "published",  default: true
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "pages", ["slug"], name: "index_pages_on_slug", unique: true

end

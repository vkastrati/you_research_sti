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

ActiveRecord::Schema.define(version: 20130821130206) do

  create_table "book_chapters", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "book_wholes", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "conference_articles", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "journal_articles", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "publications", force: true do |t|
    t.string   "type"
    t.string   "author"
    t.string   "title"
    t.string   "year"
    t.string   "publication"
    t.string   "volume"
    t.string   "issue"
    t.string   "page"
    t.string   "keywords"
    t.string   "abstract"
    t.string   "publisher"
    t.string   "placeofpublication"
    t.string   "editor"
    t.string   "seriestitle"
    t.string   "seriesvolume"
    t.string   "seriesissue"
    t.decimal  "issn",               precision: 10, scale: 0
    t.decimal  "isbn",               precision: 10, scale: 0
    t.string   "area"
    t.string   "url"
    t.decimal  "doi",                precision: 10, scale: 0
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end

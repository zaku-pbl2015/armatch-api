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

ActiveRecord::Schema.define(version: 20151202061740) do

  create_table "corporations", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.text     "outline",    limit: 65535
    t.string   "email",      limit: 255
    t.string   "password",   limit: 255
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "offers", force: :cascade do |t|
    t.string   "title",          limit: 255
    t.text     "detail",         limit: 65535
    t.integer  "corporation_id", limit: 4
    t.boolean  "wanted"
    t.date     "limited_on"
    t.integer  "category_id",    limit: 4
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  create_table "students", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "email",      limit: 255
    t.string   "password",   limit: 255
    t.text     "skill",      limit: 65535
    t.text     "apeal",      limit: 65535
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

end

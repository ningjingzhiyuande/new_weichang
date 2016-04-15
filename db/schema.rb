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

ActiveRecord::Schema.define(version: 20160415032148) do

  create_table "carpools", force: :cascade do |t|
    t.integer  "user_id",    limit: 4
    t.string   "mobile",     limit: 255
    t.datetime "by_at"
    t.integer  "by_kind",    limit: 4
    t.string   "info",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "houses", force: :cascade do |t|
    t.integer  "user_id",    limit: 4
    t.string   "address",    limit: 255
    t.decimal  "area",                   precision: 8, scale: 2
    t.decimal  "price",                  precision: 8, scale: 2
    t.string   "info",       limit: 255
    t.string   "mobile",     limit: 255
    t.integer  "status",     limit: 4
    t.integer  "kind",       limit: 4
    t.datetime "created_at",                                     null: false
    t.datetime "updated_at",                                     null: false
  end

  add_index "houses", ["kind"], name: "index_houses_on_kind", using: :btree
  add_index "houses", ["status"], name: "index_houses_on_status", using: :btree
  add_index "houses", ["user_id"], name: "index_houses_on_user_id", using: :btree

end

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

<<<<<<< HEAD
ActiveRecord::Schema.define(version: 20161015204718) do
=======
<<<<<<< HEAD
ActiveRecord::Schema.define(version: 20161009164559) do
=======
<<<<<<< HEAD
ActiveRecord::Schema.define(version: 20160926162656) do
=======
ActiveRecord::Schema.define(version: 20160910081742) do
>>>>>>> d9c4b2d1f7e70545700ffaee6ed09d3a59544a60

  create_table "microposts", force: :cascade do |t|
    t.string   "content"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end
>>>>>>> 4cc34a407957ef17da36e70102c9e7246b69aedd
>>>>>>> 8427a5e67ccc87e588511bf7900c6abab4fe4bc0

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
<<<<<<< HEAD
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "password_digest"
    t.string   "remember_digest"
    t.boolean  "admin"
=======
<<<<<<< HEAD
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "password_digest"
>>>>>>> 8427a5e67ccc87e588511bf7900c6abab4fe4bc0
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true

<<<<<<< HEAD
=======
=======
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

>>>>>>> 4cc34a407957ef17da36e70102c9e7246b69aedd
>>>>>>> 8427a5e67ccc87e588511bf7900c6abab4fe4bc0
end

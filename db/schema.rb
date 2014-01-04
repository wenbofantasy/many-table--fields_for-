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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20140104063747) do

  create_table "users", :force => true do |t|
    t.string   "email"
    t.date     "birthday"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
  end

  create_table "work_collections", :force => true do |t|
    t.integer  "user_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "attachment"
  end

  add_index "work_collections", ["user_id"], :name => "index_work_collections_on_user_id"

  create_table "work_experiences", :force => true do |t|
    t.date     "start_date"
    t.date     "end_date"
    t.string   "company"
    t.integer  "user_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "work_experiences", ["user_id"], :name => "index_work_experiences_on_user_id"

end

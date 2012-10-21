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

ActiveRecord::Schema.define(:version => 20121018091531) do

  create_table "exercise_types", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "exercises", :force => true do |t|
    t.integer  "voca_id"
    t.integer  "exercise_type_id"
    t.string   "name"
    t.text     "description"
    t.datetime "due_date"
    t.time     "length"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  add_index "exercises", ["exercise_type_id"], :name => "index_exercises_on_exercise_type_id"
  add_index "exercises", ["voca_id"], :name => "index_exercises_on_voca_id"

  create_table "roles", :force => true do |t|
    t.string   "name",        :null => false
    t.text     "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "users", :force => true do |t|
    t.integer  "user_id"
    t.integer  "role_id"
    t.string   "email",         :null => false
    t.string   "password_hash"
    t.string   "password_salt"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  add_index "users", ["role_id"], :name => "index_users_on_role_id"
  add_index "users", ["user_id"], :name => "index_users_on_user_id"

  create_table "vocas", :force => true do |t|
    t.string   "word",        :null => false
    t.string   "image"
    t.string   "sound"
    t.integer  "status",      :null => false
    t.text     "meanings",    :null => false
    t.text     "description"
    t.integer  "user_id",     :null => false
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "vocas", ["user_id"], :name => "index_vocas_on_user_id"

end

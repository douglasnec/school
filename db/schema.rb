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

ActiveRecord::Schema.define(:version => 20130328165458) do

  create_table "addresses", :force => true do |t|
    t.string   "street"
    t.string   "number"
    t.string   "adjunct"
    t.string   "district"
    t.integer  "city_id"
    t.integer  "student_id"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
    t.integer  "type_address"
  end

  create_table "courses", :force => true do |t|
    t.string   "name"
    t.integer  "interprise_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.integer  "rotation_id"
  end

  create_table "disciplines", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "grades", :force => true do |t|
    t.integer  "discipline_id"
    t.integer  "course_id"
    t.integer  "teacher_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "interprises", :force => true do |t|
    t.string   "name"
    t.string   "fantasy_name"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "people", :force => true do |t|
    t.string   "name"
    t.date     "birth"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "registrations", :force => true do |t|
    t.integer  "grade_id"
    t.integer  "student_id"
    t.integer  "active"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "responsibles", :id => false, :force => true do |t|
    t.integer "person_id",      :null => false
    t.integer "responsible_to"
    t.integer "student_id"
  end

  create_table "rotations", :force => true do |t|
    t.string   "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "students", :id => false, :force => true do |t|
    t.integer "person_id",       :null => false
    t.string  "register_number", :null => false
  end

  create_table "teachers", :id => false, :force => true do |t|
    t.integer  "person_id",  :null => false
    t.date     "date_hire"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "telephones", :force => true do |t|
    t.string   "number"
    t.integer  "contact"
    t.integer  "student_id"
    t.integer  "teacher_id"
    t.integer  "interprise_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

end

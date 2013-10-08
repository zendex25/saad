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

ActiveRecord::Schema.define(version: 20131008162844) do

  create_table "day_timeslots", force: true do |t|
    t.integer  "day_id"
    t.integer  "timeslot_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "day_timeslots", ["day_id"], name: "index_day_timeslots_on_day_id"
  add_index "day_timeslots", ["timeslot_id"], name: "index_day_timeslots_on_timeslot_id"

  create_table "days", force: true do |t|
    t.string   "name"
    t.string   "desc"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "departments", force: true do |t|
    t.string   "name"
    t.string   "desc"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "professors", force: true do |t|
    t.string   "lastname"
    t.string   "firstname"
    t.string   "middleinitial"
    t.string   "status"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "rooms", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "schedules", force: true do |t|
    t.integer  "day_id"
    t.integer  "timeslot_id"
    t.integer  "section_id"
    t.integer  "subject_id"
    t.integer  "professor_id"
    t.integer  "room_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "schedules", ["day_id"], name: "index_schedules_on_day_id"
  add_index "schedules", ["professor_id"], name: "index_schedules_on_professor_id"
  add_index "schedules", ["room_id"], name: "index_schedules_on_room_id"
  add_index "schedules", ["section_id"], name: "index_schedules_on_section_id"
  add_index "schedules", ["subject_id"], name: "index_schedules_on_subject_id"
  add_index "schedules", ["timeslot_id"], name: "index_schedules_on_timeslot_id"

  create_table "section_subjects", force: true do |t|
    t.integer  "section_id"
    t.integer  "subject_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "section_subjects", ["section_id"], name: "index_section_subjects_on_section_id"
  add_index "section_subjects", ["subject_id"], name: "index_section_subjects_on_subject_id"

  create_table "sections", force: true do |t|
    t.string   "name"
    t.integer  "department_id"
    t.string   "yearlevel"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "sections", ["department_id"], name: "index_sections_on_department_id"

  create_table "subjects", force: true do |t|
    t.string   "name"
    t.string   "desc"
    t.integer  "load"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "timeslots", force: true do |t|
    t.time     "start"
    t.time     "finish"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string "name"
    t.string "hashed_password"
    t.string "salt"
    t.string "password"
  end

end

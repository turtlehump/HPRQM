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

ActiveRecord::Schema.define(version: 20151119012727) do

  create_table "answers", force: :cascade do |t|
    t.integer  "ans_type",    default: 0,     null: false
    t.boolean  "submitted",   default: false
    t.boolean  "approved"
    t.string   "str"
    t.integer  "int"
    t.boolean  "bool"
    t.integer  "question_id"
    t.integer  "release_id"
    t.integer  "user_id"
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  add_index "answers", ["question_id"], name: "index_answers_on_question_id"
  add_index "answers", ["release_id"], name: "index_answers_on_release_id"
  add_index "answers", ["user_id"], name: "index_answers_on_user_id"

  create_table "dashboards", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "project_users", force: :cascade do |t|
    t.integer  "project_id"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "project_users", ["project_id"], name: "index_project_users_on_project_id"
  add_index "project_users", ["user_id"], name: "index_project_users_on_user_id"

  create_table "projects", force: :cascade do |t|
    t.string   "project_name", null: false
    t.date     "start_date"
    t.date     "end_date"
    t.string   "ppm_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "questions", force: :cascade do |t|
    t.string   "str",                    null: false
    t.integer  "ans_type",   default: 0, null: false
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "release_reviews", force: :cascade do |t|
    t.integer  "release_id"
    t.integer  "review_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "release_reviews", ["release_id"], name: "index_release_reviews_on_release_id"
  add_index "release_reviews", ["review_id"], name: "index_release_reviews_on_review_id"

  create_table "releases", force: :cascade do |t|
    t.string   "sdlcm_release_id", null: false
    t.date     "start_date",       null: false
    t.date     "end_date",         null: false
    t.string   "name",             null: false
    t.integer  "project_id",       null: false
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  add_index "releases", ["project_id"], name: "index_releases_on_project_id"

  create_table "review_questions", force: :cascade do |t|
    t.integer  "review_id",   null: false
    t.integer  "question_id", null: false
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "review_questions", ["question_id"], name: "index_review_questions_on_question_id"
  add_index "review_questions", ["review_id"], name: "index_review_questions_on_review_id"

  create_table "reviews", force: :cascade do |t|
    t.string   "review_name", null: false
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "f_name",                                 null: false
    t.string   "m_name"
    t.string   "l_name",                                 null: false
    t.integer  "employee_num"
    t.boolean  "super_admin",            default: false, null: false
    t.integer  "role"
    t.string   "email",                  default: "",    null: false
    t.string   "encrypted_password",     default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end

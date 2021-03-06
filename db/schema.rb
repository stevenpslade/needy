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

ActiveRecord::Schema.define(version: 20151126064844) do

  create_table "chats", force: :cascade do |t|
    t.integer  "task_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "chats", ["task_id"], name: "index_chats_on_task_id"

  create_table "messages", force: :cascade do |t|
    t.integer  "chat_id"
    t.text     "text"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id"
    t.string   "sent_at"
  end

  add_index "messages", ["chat_id"], name: "index_messages_on_chat_id"

  create_table "requests", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "task_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "comment"
  end

  create_table "reviews", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "task_id"
    t.integer  "for_user"
    t.text     "content"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "user_rating"
  end

  create_table "tasks", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "needed_id"
    t.boolean  "needy_confirm_completion",  default: false
    t.boolean  "needed_confirm_completion", default: false
    t.string   "location"
    t.text     "description"
    t.string   "estimated_duration"
    t.string   "category"
    t.datetime "due_date"
    t.string   "compensation"
    t.string   "image_url",                 default: "https://cdn3.iconfinder.com/data/icons/illustricon-tech/512/task.board-512.png"
    t.string   "video_url"
    t.string   "difficulty"
    t.datetime "created_at",                                                                                                           null: false
    t.datetime "updated_at",                                                                                                           null: false
    t.string   "title"
    t.boolean  "incomplete",                default: false
    t.integer  "incomplete_by"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                                                                                                                             null: false
    t.string   "username"
    t.string   "phone"
    t.date     "birth_date"
    t.string   "skills"
    t.text     "bio"
    t.string   "gender"
    t.string   "city"
    t.string   "profile_image_url",               default: "http://smallfarms.oregonstate.edu/sites/default/files/_includes/staff_placeholder.jpg"
    t.integer  "needy_rating",                    default: 0
    t.integer  "needed_rating",                   default: 0
    t.boolean  "trackable"
    t.string   "task_radius"
    t.string   "crypted_password"
    t.string   "salt"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "remember_me_token"
    t.datetime "remember_me_token_expires_at"
    t.string   "reset_password_token"
    t.datetime "reset_password_token_expires_at"
    t.datetime "reset_password_email_sent_at"
    t.string   "first_name"
    t.string   "last_name"
  end

  add_index "users", ["remember_me_token"], name: "index_users_on_remember_me_token"
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token"

end

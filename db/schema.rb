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

ActiveRecord::Schema.define(version: 20180826031623) do

  create_table "admins", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci" do |t|
    t.string   "email"
    t.string   "password"
    t.string   "token_admin"
    t.string   "auth_token"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.string   "password_reset_token"
    t.datetime "password_reset_sent_at"
  end

  create_table "categories", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci" do |t|
    t.string   "category_job"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "disposableemails", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci" do |t|
    t.string   "name"
    t.string   "email"
    t.string   "description"
    t.string   "active"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "feedbacks", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci" do |t|
    t.string   "reason"
    t.string   "text"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "jobs", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci" do |t|
    t.integer  "user_id"
    t.string   "title"
    t.string   "category"
    t.text     "description",  limit: 65535
    t.integer  "salary"
    t.string   "salary_type"
    t.string   "salary_state"
    t.string   "city"
    t.string   "job_type"
    t.string   "company_name"
    t.integer  "views",                      default: 0, null: false
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
  end

  create_table "messages", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci" do |t|
    t.string   "message"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci" do |t|
    t.string   "user_name",                            default: "User Name",  null: false
    t.string   "full_name"
    t.string   "email"
    t.string   "password"
    t.string   "confirm_password"
    t.string   "contact_name"
    t.string   "company_name"
    t.string   "address",                              default: "Address",    null: false
    t.string   "phone_number",                         default: "Phone",      null: false
    t.string   "website",                              default: "Website",    null: false
    t.text     "company_description",    limit: 65535
    t.string   "first_name",                           default: "Last Name",  null: false
    t.string   "last_name",                            default: "First Name", null: false
    t.integer  "activated",                            default: 0,            null: false
    t.integer  "blocked",                              default: 0,            null: false
    t.string   "password_reset_token"
    t.string   "password_reset_sent_at"
    t.string   "auth_token_reset"
    t.string   "url_avatar"
    t.datetime "day_of_birth"
    t.datetime "created_at",                                                  null: false
    t.datetime "updated_at",                                                  null: false
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
    t.boolean  "email_confirmed",                      default: false
    t.string   "confirm_token"
  end

end

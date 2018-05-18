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

ActiveRecord::Schema.define(version: 20170810025912) do

  create_table "admins", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci" do |t|
    t.string   "email"
    t.string   "password"
    t.string   "token_admin"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.string   "auth_token"
    t.string   "password_reset_token"
    t.datetime "password_reset_sent_at"
  end

  create_table "ages", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci" do |t|
    t.integer  "age"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "applieds", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci" do |t|
    t.integer  "parttimer_id"
    t.integer  "employer_id"
    t.integer  "job_id"
    t.string   "status_job"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "categories", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci" do |t|
    t.string   "category_job"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "cities", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci" do |t|
    t.integer  "state_id"
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "disposableemails", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci" do |t|
    t.string   "name"
    t.string   "email"
    t.string   "description"
    t.string   "active"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "favoritejobs", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci" do |t|
    t.integer  "parttimer_id"
    t.integer  "employer_id"
    t.integer  "job_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "jobs", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci" do |t|
    t.integer  "user_id"
    t.string   "title"
    t.string   "category_job"
    t.text     "description",              limit: 65535
    t.string   "type_job"
    t.integer  "vacancies"
    t.string   "availablefor"
    t.string   "agefrom"
    t.string   "ageto"
    t.integer  "number_of_location",                     default: 1,     null: false
    t.text     "requirements",             limit: 65535
    t.string   "language_Bahasa_Malaysia",               default: "0",   null: false
    t.string   "language_Chinese",                       default: "0",   null: false
    t.string   "language_English",                       default: "0",   null: false
    t.string   "language_Tamin",                         default: "0",   null: false
    t.string   "language_Cantonese",                     default: "0",   null: false
    t.string   "language_Hokkien",                       default: "0",   null: false
    t.string   "per_day"
    t.string   "salary"
    t.string   "payment"
    t.string   "on_the_spot"
    t.string   "commission"
    t.text     "benefits",                 limit: 65535
    t.datetime "working_date_from"
    t.datetime "working_date_to"
    t.string   "working_hour_from"
    t.string   "working_hour_to"
    t.string   "working_address"
    t.string   "working_address2"
    t.string   "state"
    t.string   "city"
    t.string   "post_code"
    t.string   "working_address3"
    t.string   "working_address4"
    t.string   "state2"
    t.string   "city2"
    t.string   "post_code2"
    t.string   "contact_person"
    t.string   "way_of_contact"
    t.string   "email"
    t.string   "current_tab_active"
    t.datetime "created_at",                                             null: false
    t.datetime "updated_at",                                             null: false
    t.integer  "awarded_job",                            default: 0,     null: false
    t.integer  "vacancies_start",                        default: 0
    t.boolean  "spending_sms",                           default: false, null: false
    t.boolean  "employer_real",                          default: false, null: false
    t.string   "phone_number"
    t.string   "company_name"
    t.integer  "views",                                  default: 0,     null: false
  end

  create_table "location_parttimers", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci" do |t|
    t.integer  "parttimer_id"
    t.string   "state1"
    t.string   "city1"
    t.string   "state2"
    t.string   "city2"
    t.string   "state3"
    t.string   "city3"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "notificationadmins", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci" do |t|
    t.text     "content",    limit: 65535
    t.string   "user"
    t.string   "status"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "notifications", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci" do |t|
    t.string   "content"
    t.string   "status"
    t.integer  "user_id"
    t.string   "admin"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "otp_codes", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci" do |t|
    t.integer  "user_id"
    t.string   "otp_code_string"
    t.datetime "time_expired"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "profiles", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci" do |t|
    t.integer  "user_id"
    t.string   "company_name"
    t.string   "headline"
    t.string   "short_description"
    t.string   "company_size"
    t.string   "company_address"
    t.string   "company_address1"
    t.string   "company_address2"
    t.text     "company_bio",               limit: 65535
    t.string   "name_of_person_in_charge"
    t.string   "contact_mobile"
    t.string   "company_contact"
    t.string   "fixed_line_no"
    t.string   "company_email"
    t.datetime "created_at",                              null: false
    t.datetime "updated_at",                              null: false
    t.string   "company_logo_file_name"
    t.string   "company_logo_content_type"
    t.integer  "company_logo_file_size"
    t.datetime "company_logo_updated_at"
  end

  create_table "quotajobs", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci" do |t|
    t.integer  "quota"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "recommendeds", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci" do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "searches", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci" do |t|
    t.boolean  "clickall",   default: false
    t.integer  "user_id"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  create_table "states", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci" do |t|
    t.string   "state"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci" do |t|
    t.string   "user_name",                                 default: "User Name",  null: false
    t.string   "full_name"
    t.string   "password"
    t.string   "first_name",                                default: "Last Name",  null: false
    t.string   "last_name",                                 default: "First Name", null: false
    t.string   "email"
    t.string   "phone_number"
    t.string   "phone_number_change"
    t.integer  "activated",                                 default: 0,            null: false
    t.integer  "blocked",                                   default: 0,            null: false
    t.datetime "day_of_birth"
    t.string   "address"
    t.string   "type_user"
    t.integer  "verified_phone",                            default: 0,            null: false
    t.integer  "verified_employer",                         default: 0,            null: false
    t.integer  "complete_profile",                          default: 0,            null: false
    t.integer  "verify_postjob_employer",                   default: 0,            null: false
    t.integer  "verify_findjob_parttimer",                  default: 0,            null: false
    t.integer  "time_login",                                default: 0,            null: false
    t.string   "nationality"
    t.string   "race"
    t.string   "education"
    t.string   "sex"
    t.string   "bahasa_malaysia"
    t.string   "chinese"
    t.string   "english"
    t.string   "tamil"
    t.string   "cantonese"
    t.string   "hokkien"
    t.text     "introduce_yourself",          limit: 65535
    t.string   "working_location"
    t.string   "ifmalaysian"
    t.string   "preferred_working_location1"
    t.string   "preferred_working_location2"
    t.string   "preferred_working_location3"
    t.integer  "profile_id"
    t.string   "provider"
    t.string   "uid"
    t.string   "name"
    t.string   "oauth_token"
    t.datetime "oauth_expires_at"
    t.datetime "created_at",                                                       null: false
    t.datetime "updated_at",                                                       null: false
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
    t.boolean  "email_confirmed",                           default: false
    t.string   "confirm_token"
    t.string   "auth_token_reset"
    t.string   "password_reset_token"
    t.datetime "password_reset_sent_at"
    t.string   "url_avatar"
    t.string   "address_special_account"
    t.integer  "otp_time",                                  default: 0,            null: false
  end

  create_table "viewjobs", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci" do |t|
    t.integer  "parttimer_id"
    t.integer  "job_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "workinghours", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci" do |t|
    t.string   "working_hour"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

end

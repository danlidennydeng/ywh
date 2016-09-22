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

ActiveRecord::Schema.define(version: 20160922075913) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "approving_statuses", force: :cascade do |t|
    t.string   "name"
    t.text     "note"
    t.integer  "edited_by"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "business_identities", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "name"
    t.text     "note"
    t.integer  "edited_by"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_business_identities_on_user_id", using: :btree
  end

  create_table "educations", force: :cascade do |t|
    t.string   "name"
    t.text     "note"
    t.integer  "edited_by"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "entities", force: :cascade do |t|
    t.string   "name"
    t.text     "note"
    t.integer  "edited_by"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "individual_identities", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "fullname"
    t.integer  "sex_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["sex_id"], name: "index_individual_identities_on_sex_id", using: :btree
    t.index ["user_id"], name: "index_individual_identities_on_user_id", using: :btree
  end

  create_table "official_identities", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "name"
    t.text     "note"
    t.integer  "edited_by"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_official_identities_on_user_id", using: :btree
  end

  create_table "ownerships", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "unit_number"
    t.text     "note"
    t.integer  "edited_by"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["user_id"], name: "index_ownerships_on_user_id", using: :btree
  end

  create_table "reasons", force: :cascade do |t|
    t.string   "name"
    t.text     "note"
    t.integer  "edited_by"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "residences", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "xiaoqu_id"
    t.string   "unit_number"
    t.integer  "area"
    t.integer  "approving_status_id", default: 1
    t.text     "note"
    t.integer  "edited_by"
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
    t.index ["approving_status_id"], name: "index_residences_on_approving_status_id", using: :btree
    t.index ["user_id"], name: "index_residences_on_user_id", using: :btree
    t.index ["xiaoqu_id"], name: "index_residences_on_xiaoqu_id", using: :btree
  end

  create_table "role_categories", force: :cascade do |t|
    t.string   "name"
    t.text     "note"
    t.integer  "edited_by"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "roles", force: :cascade do |t|
    t.string   "name"
    t.integer  "entity_id"
    t.text     "note"
    t.integer  "edited_by"
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
    t.integer  "role_category_id", default: 1
    t.index ["entity_id"], name: "index_roles_on_entity_id", using: :btree
    t.index ["role_category_id"], name: "index_roles_on_role_category_id", using: :btree
  end

  create_table "securities", force: :cascade do |t|
    t.string   "name"
    t.integer  "level"
    t.text     "note"
    t.integer  "edited_by"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sexes", force: :cascade do |t|
    t.string   "name"
    t.text     "note"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.integer  "security_id",            default: 1
    t.integer  "role_id",                default: 1
    t.text     "note"
    t.integer  "edited_by"
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
    t.index ["role_id"], name: "index_users_on_role_id", using: :btree
    t.index ["security_id"], name: "index_users_on_security_id", using: :btree
  end

  create_table "xiaoqus", force: :cascade do |t|
    t.string   "name"
    t.string   "address"
    t.integer  "total_units"
    t.integer  "populations"
    t.integer  "starting_year"
    t.integer  "starting_month"
    t.text     "note"
    t.integer  "edited_by"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_foreign_key "business_identities", "users"
  add_foreign_key "individual_identities", "sexes"
  add_foreign_key "individual_identities", "users"
  add_foreign_key "official_identities", "users"
  add_foreign_key "ownerships", "users"
  add_foreign_key "residences", "approving_statuses"
  add_foreign_key "residences", "users"
  add_foreign_key "residences", "xiaoqus"
  add_foreign_key "roles", "entities"
  add_foreign_key "roles", "role_categories"
  add_foreign_key "users", "roles"
  add_foreign_key "users", "securities"
end

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

ActiveRecord::Schema.define(version: 20130730153453) do

  create_table "active_admin_comments", force: true do |t|
    t.string   "namespace"
    t.text     "body"
    t.string   "resource_id",   null: false
    t.string   "resource_type", null: false
    t.integer  "author_id"
    t.string   "author_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "active_admin_comments", ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id", using: :btree
  add_index "active_admin_comments", ["namespace"], name: "index_active_admin_comments_on_namespace", using: :btree
  add_index "active_admin_comments", ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id", using: :btree

  create_table "admin_users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "admin_users", ["email"], name: "index_admin_users_on_email", unique: true, using: :btree
  add_index "admin_users", ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true, using: :btree

  create_table "ckeditor_assets", force: true do |t|
    t.string   "data_file_name",               null: false
    t.string   "data_content_type"
    t.integer  "data_file_size"
    t.integer  "assetable_id"
    t.string   "assetable_type",    limit: 30
    t.string   "type",              limit: 30
    t.integer  "width"
    t.integer  "height"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "ckeditor_assets", ["assetable_type", "assetable_id"], name: "idx_ckeditor_assetable", using: :btree
  add_index "ckeditor_assets", ["assetable_type", "type", "assetable_id"], name: "idx_ckeditor_assetable_type", using: :btree

  create_table "countries", force: true do |t|
    t.string   "title",             null: false
    t.text     "overview"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "flag_file_name"
    t.string   "flag_content_type"
    t.integer  "flag_file_size"
    t.datetime "flag_updated_at"
  end

  create_table "country_tours", force: true do |t|
    t.integer  "country_id"
    t.integer  "tour_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "country_tours", ["country_id"], name: "index_country_tours_on_country_id", using: :btree
  add_index "country_tours", ["tour_id"], name: "index_country_tours_on_tour_id", using: :btree

  create_table "managers", force: true do |t|
    t.string   "name"
    t.string   "phone"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "news", force: true do |t|
    t.string   "title",                      null: false
    t.text     "content"
    t.boolean  "published",  default: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "orders", force: true do |t|
    t.string   "title"
    t.string   "phone"
    t.string   "email"
    t.text     "notation"
    t.integer  "tour_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "orders", ["tour_id"], name: "index_orders_on_tour_id", using: :btree

  create_table "requests", force: true do |t|
    t.string   "name"
    t.string   "phone"
    t.string   "email"
    t.text     "notation"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "static_blocks", force: true do |t|
    t.string   "title"
    t.text     "content"
    t.string   "block_key"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tour_images", force: true do |t|
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.integer  "tour_id"
    t.boolean  "active"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "tour_images", ["tour_id"], name: "index_tour_images_on_tour_id", using: :btree

  create_table "tour_types", force: true do |t|
    t.integer  "type_of_tour_id"
    t.integer  "tour_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "tour_types", ["tour_id"], name: "index_tour_types_on_tour_id", using: :btree
  add_index "tour_types", ["type_of_tour_id"], name: "index_tour_types_on_type_of_tour_id", using: :btree

  create_table "tour_visas", force: true do |t|
    t.integer  "tour_id"
    t.integer  "visa_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "tour_visas", ["tour_id"], name: "index_tour_visas_on_tour_id", using: :btree
  add_index "tour_visas", ["visa_id"], name: "index_tour_visas_on_visa_id", using: :btree

  create_table "tours", force: true do |t|
    t.string   "title",                                               null: false
    t.text     "preview"
    t.text     "overview"
    t.decimal  "price",      precision: 10, scale: 0
    t.boolean  "published",                           default: false
    t.boolean  "active",                              default: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "manager_id"
  end

  add_index "tours", ["manager_id"], name: "index_tours_on_manager_id", using: :btree

  create_table "type_of_tours", force: true do |t|
    t.string   "title",      null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "visas", force: true do |t|
    t.string   "title"
    t.text     "overview"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end

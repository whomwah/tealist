# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20100311082323) do

  create_table "cuppas", :force => true do |t|
    t.string   "title"
    t.string   "description"
    t.integer  "user_id"
    t.integer  "list_id"
    t.integer  "tea_strength_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "cuppas", ["list_id"], :name => "index_cuppas_on_list_id"
  add_index "cuppas", ["tea_strength_id"], :name => "index_cuppas_on_tea_strength_id"
  add_index "cuppas", ["user_id"], :name => "index_cuppas_on_user_id"

  create_table "ingredients", :force => true do |t|
    t.integer  "amount",       :default => 0
    t.integer  "substance_id"
    t.integer  "cuppa_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "ingredients", ["cuppa_id"], :name => "index_ingredients_on_cuppa_id"
  add_index "ingredients", ["substance_id"], :name => "index_ingredients_on_substance_id"

  create_table "lists", :force => true do |t|
    t.string   "url_key",         :null => false
    t.string   "title"
    t.string   "description"
    t.string   "logo_url"
    t.string   "homepage_url"
    t.integer  "organisation_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "lists", ["organisation_id"], :name => "index_lists_on_organisation_id"
  add_index "lists", ["url_key"], :name => "index_lists_on_url_key"

  create_table "memberships", :force => true do |t|
    t.integer  "list_id"
    t.integer  "user_id"
    t.integer  "position"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "memberships", ["list_id"], :name => "index_memberships_on_list_id"
  add_index "memberships", ["user_id"], :name => "index_memberships_on_user_id"

  create_table "organisations", :force => true do |t|
    t.string   "url_key",      :null => false
    t.string   "title"
    t.string   "description"
    t.string   "logo_url"
    t.string   "homepage_url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "organisations", ["url_key"], :name => "index_organisations_on_url_key"

  create_table "substances", :force => true do |t|
    t.string   "title"
    t.string   "description"
    t.string   "logo_url"
    t.string   "unit"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tea_strengths", :force => true do |t|
    t.string   "title"
    t.string   "description"
    t.integer  "position"
    t.string   "color"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "url_keys", :id => false, :force => true do |t|
    t.integer "count", :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "email"
    t.string   "crypted_password"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "encrypted_password", :limit => 128
    t.string   "salt",               :limit => 128
    t.string   "confirmation_token", :limit => 128
    t.string   "remember_token",     :limit => 128
    t.boolean  "email_confirmed",                   :default => false, :null => false
  end

  add_index "users", ["email"], :name => "index_users_on_email"
  add_index "users", ["id", "confirmation_token"], :name => "index_users_on_id_and_confirmation_token"
  add_index "users", ["remember_token"], :name => "index_users_on_remember_token"

end

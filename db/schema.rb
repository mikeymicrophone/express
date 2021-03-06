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

ActiveRecord::Schema.define(:version => 20121015171830) do

  create_table "baselines", :force => true do |t|
    t.integer  "election_id"
    t.integer  "voter_id"
    t.integer  "level"
    t.boolean  "current"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "candidate_stances", :force => true do |t|
    t.integer  "candidate_id"
    t.integer  "issue_stance_id"
    t.text     "description"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  add_index "candidate_stances", ["candidate_id"], :name => "index_candidate_stances_on_candidate_id"
  add_index "candidate_stances", ["issue_stance_id"], :name => "index_candidate_stances_on_issue_stance_id"

  create_table "candidates", :force => true do |t|
    t.integer  "election_id"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "elections", :force => true do |t|
    t.integer  "office_id"
    t.datetime "start_date"
    t.datetime "end_date"
    t.string   "supervisor"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "issue_stances", :force => true do |t|
    t.integer  "issue_id"
    t.integer  "stance_id"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "issues", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "offices", :force => true do |t|
    t.integer  "organization_id"
    t.string   "name"
    t.text     "description"
    t.string   "homepage"
    t.string   "phone"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "organizations", :force => true do |t|
    t.string   "name"
    t.string   "homepage"
    t.string   "phone"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "parties", :force => true do |t|
    t.string   "name"
    t.string   "homepage"
    t.string   "phone"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "stances", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "voters", :force => true do |t|
    t.string   "email",                               :default => "", :null => false
    t.string   "encrypted_password",   :limit => 128, :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                       :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "authentication_token"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "voters", ["authentication_token"], :name => "index_voters_on_authentication_token", :unique => true
  add_index "voters", ["confirmation_token"], :name => "index_voters_on_confirmation_token", :unique => true
  add_index "voters", ["email"], :name => "index_voters_on_email", :unique => true
  add_index "voters", ["reset_password_token"], :name => "index_voters_on_reset_password_token", :unique => true

  create_table "votes", :force => true do |t|
    t.integer  "candidate_id"
    t.integer  "voter_id"
    t.integer  "support"
    t.boolean  "current"
    t.boolean  "authorized"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end

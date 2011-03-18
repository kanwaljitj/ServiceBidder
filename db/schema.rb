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

ActiveRecord::Schema.define(:version => 20110317220436) do

  create_table "addresses", :force => true do |t|
    t.string   "Line1"
    t.string   "Line2"
    t.string   "City"
    t.string   "State"
    t.string   "ZipCode"
    t.string   "Extension"
    t.string   "Country"
    t.integer  "Subscriber_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "service_quotes", :force => true do |t|
    t.decimal  "Amount"
    t.integer  "ServiceRequest_id"
    t.integer  "Subscriber_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "service_requests", :force => true do |t|
    t.string   "Description"
    t.integer  "Subscriber_id"
    t.integer  "SkillCategory_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "skill_categories", :force => true do |t|
    t.string   "Name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "skill_profiles", :force => true do |t|
    t.string   "Name"
    t.string   "BusinessInfo"
    t.string   "PrimaryTel"
    t.string   "Mobile"
    t.integer  "WorkRadius"
    t.boolean  "EmailAlerts"
    t.integer  "Address_id"
    t.integer  "Subscriber_id"
    t.integer  "SkillCategory_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "skill_references", :force => true do |t|
    t.integer  "SkillProfile_id"
    t.string   "Description"
    t.string   "AdditionalInfo"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "subscribers", :force => true do |t|
    t.string   "Firstname"
    t.string   "Lastname"
    t.string   "email"
    t.string   "password"
    t.string   "Type"
    t.boolean  "PasswordReset"
    t.boolean  "Active"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end

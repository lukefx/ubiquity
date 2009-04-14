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

ActiveRecord::Schema.define(:version => 20090310133232) do

  create_table "applications", :force => true do |t|
    t.string  "name",                      :null => false
    t.string  "info",                      :null => false
    t.integer "created_at", :limit => nil, :null => false
    t.integer "updated_at", :limit => nil, :null => false
  end

  create_table "groups", :force => true do |t|
    t.string  "name",                       :null => false
    t.string  "description",                :null => false
    t.integer "created_at",  :limit => nil, :null => false
    t.integer "updated_at",  :limit => nil, :null => false
  end

  create_table "groups_users", :id => false, :force => true do |t|
    t.integer "group_id", :null => false
    t.integer "user_id",  :null => false
  end

  create_table "permissions", :force => true do |t|
    t.string  "name",                          :null => false
    t.string  "info",                          :null => false
    t.integer "application_id",                :null => false
    t.integer "created_at",     :limit => nil, :null => false
    t.integer "updated_at",     :limit => nil, :null => false
  end

  create_table "permissions_roles", :id => false, :force => true do |t|
    t.integer "permission_id", :null => false
    t.integer "role_id",       :null => false
  end

  create_table "roles", :force => true do |t|
    t.string  "name",                         :null => false
    t.string  "info",                         :null => false
    t.integer "roleable_id",                  :null => false
    t.string  "roleable_type",                :null => false
    t.integer "created_at",    :limit => nil, :null => false
    t.integer "updated_at",    :limit => nil, :null => false
  end

  create_table "users", :force => true do |t|
    t.string  "nickname",                   :null => false
    t.string  "password",                   :null => false
    t.string  "description", :limit => nil, :null => false
    t.integer "access",      :limit => nil, :null => false
    t.integer "created_at",  :limit => nil, :null => false
    t.integer "updated_at",  :limit => nil, :null => false
  end

end

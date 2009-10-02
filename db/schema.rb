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

ActiveRecord::Schema.define(:version => 20091002093137) do

  create_table "games", :id => false, :force => true do |t|
    t.integer  "id",             :limit => 11,                :null => false
    t.string   "status"
    t.integer  "group_id"
    t.integer  "round_id"
    t.datetime "gametime"
    t.integer  "stadium_id"
    t.integer  "team_one"
    t.integer  "team_two"
    t.integer  "goals_team_one",               :default => 0
    t.integer  "goals_team_two",               :default => 0
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "groups", :id => false, :force => true do |t|
    t.integer  "id",         :limit => 11, :null => false
    t.string   "name"
    t.string   "status"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "rounds", :id => false, :force => true do |t|
    t.integer  "id",         :limit => 11, :null => false
    t.string   "name"
    t.string   "status"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "stadia", :id => false, :force => true do |t|
    t.integer  "id",         :limit => 11, :null => false
    t.string   "name"
    t.string   "city"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "teams", :id => false, :force => true do |t|
    t.integer  "id",         :limit => 11,                 :null => false
    t.string   "position"
    t.integer  "round_id"
    t.string   "country",                  :default => ""
    t.string   "flag_uri",                 :default => ""
    t.integer  "group_id"
    t.integer  "games",                    :default => 0
    t.integer  "wins",                     :default => 0
    t.integer  "draw",                     :default => 0
    t.integer  "losses",                   :default => 0
    t.integer  "goals_won",                :default => 0
    t.integer  "goals_lost",               :default => 0
    t.integer  "points",                   :default => 0
    t.integer  "place",                    :default => 0
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :id => false, :force => true do |t|
    t.integer  "id",                :limit => 11,                        :null => false
    t.string   "email",                                                  :null => false
    t.string   "crypted_password",                                       :null => false
    t.string   "persistence_token",                                      :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "status",                          :default => "pending"
    t.string   "perishable_token"
  end

end

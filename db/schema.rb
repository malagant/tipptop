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

ActiveRecord::Schema.define(:version => 20091002173156) do

  create_table "gamers", :force => true do |t|
    t.integer  "user_id"
    t.string   "firstname"
    t.string   "lastname"
    t.string   "street1"
    t.string   "street2"
    t.string   "zipcode"
    t.string   "city"
    t.string   "country"
    t.string   "phone"
    t.string   "twitter"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "games", :force => true do |t|
    t.string   "status"
    t.integer  "group_id"
    t.integer  "round_id"
    t.datetime "gametime"
    t.integer  "stadium_id"
    t.integer  "team_one"
    t.integer  "team_two"
    t.integer  "goals_team_one", :default => 0
    t.integer  "goals_team_two", :default => 0
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "groups", :force => true do |t|
    t.string   "name"
    t.string   "status"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "rounds", :force => true do |t|
    t.string   "name"
    t.string   "status"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "stadia", :force => true do |t|
    t.string   "name"
    t.string   "city"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "teams", :force => true do |t|
    t.string   "position"
    t.integer  "round_id"
    t.string   "country",    :default => ""
    t.string   "flag_uri",   :default => ""
    t.integer  "group_id"
    t.integer  "games",      :default => 0
    t.integer  "wins",       :default => 0
    t.integer  "draw",       :default => 0
    t.integer  "losses",     :default => 0
    t.integer  "goals_won",  :default => 0
    t.integer  "goals_lost", :default => 0
    t.integer  "points",     :default => 0
    t.integer  "place",      :default => 0
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tipps", :force => true do |t|
    t.integer  "gamer_id"
    t.integer  "game_id"
    t.integer  "goals_one"
    t.integer  "goals"
    t.string   "status"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "email",                                    :null => false
    t.string   "crypted_password",                         :null => false
    t.string   "persistence_token",                        :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "status",            :default => "pending"
    t.string   "perishable_token"
  end

end

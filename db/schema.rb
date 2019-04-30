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

ActiveRecord::Schema.define(version: 2019_04_29_205538) do

  create_table "battlemechs", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.string "serial"
    t.string "tech_base"
    t.integer "year_made"
    t.integer "battle_value"
    t.integer "cost"
    t.integer "tonnage"
    t.integer "base_walk", default: 0
    t.integer "base_run", default: 0
    t.integer "base_jump", default: 0
    t.integer "base_heat_sinks", default: 0
    t.integer "hp_head_internal", default: 1
    t.integer "hp_ct_internal", default: 1
    t.integer "hp_lt_internal", default: 1
    t.integer "hp_rt_internal", default: 1
    t.integer "hp_la_internal", default: 1
    t.integer "hp_ra_internal", default: 1
    t.integer "hp_ll_internal", default: 1
    t.integer "hp_rl_internal", default: 1
    t.integer "hp_head_armor", default: 0
    t.integer "hp_ct_front_armor", default: 0
    t.integer "hp_ct_rear_armor", default: 0
    t.integer "hp_lt_front_armor", default: 0
    t.integer "hp_lt_rear_armor", default: 0
    t.integer "hp_rt_front_armor", default: 0
    t.integer "hp_rt_rear_armor", default: 0
    t.integer "hp_la_armor", default: 0
    t.integer "hp_ra_armor", default: 0
    t.integer "hp_ll_armor", default: 0
    t.integer "hp_rl_armor", default: 0
    t.index ["battle_value"], name: "index_battlemechs_on_battle_value"
    t.index ["cost"], name: "index_battlemechs_on_cost"
    t.index ["name"], name: "index_battlemechs_on_name"
    t.index ["serial", "name"], name: "by_type", unique: true
    t.index ["tonnage"], name: "index_battlemechs_on_tonnage"
    t.index ["year_made"], name: "index_battlemechs_on_year_made"
  end

  create_table "weapons", force: :cascade do |t|
    t.string "name"
    t.string "types"
    t.string "heat"
    t.string "damage"
    t.integer "minrange"
    t.integer "shrtrange"
    t.integer "medrange"
    t.integer "longrange"
    t.integer "ammoperton"
    t.integer "tohitmod"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end

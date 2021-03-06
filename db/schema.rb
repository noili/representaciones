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

ActiveRecord::Schema.define(version: 20160918184842) do

  create_table "movements", force: :cascade do |t|
    t.integer  "monto"
    t.string   "type"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "reserva_id"
    t.integer  "operator_id"
  end

  create_table "operators", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "type"
  end

  create_table "passengers", force: :cascade do |t|
    t.string   "name"
    t.string   "documento"
    t.date     "nacimiento"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reservas", force: :cascade do |t|
    t.date     "salida"
    t.string   "hotel"
    t.integer  "operator_id"
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
    t.integer  "wholesaler_id"
    t.integer  "retail_id"
    t.integer  "amount_cents",    default: 0,     null: false
    t.string   "amount_currency", default: "USD", null: false
  end

  add_index "reservas", ["operator_id"], name: "index_reservas_on_operator_id"

  create_table "trips", force: :cascade do |t|
    t.integer  "reserva_id"
    t.integer  "passenger_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "trips", ["passenger_id"], name: "index_trips_on_passenger_id"
  add_index "trips", ["reserva_id"], name: "index_trips_on_reserva_id"

end

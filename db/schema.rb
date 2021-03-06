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

ActiveRecord::Schema.define(version: 20160303175534) do

  create_table "estante_libros", force: :cascade do |t|
    t.integer  "libro_id"
    t.integer  "estante_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "estante_libros", ["estante_id"], name: "index_estante_libros_on_estante_id"
  add_index "estante_libros", ["libro_id"], name: "index_estante_libros_on_libro_id"

  create_table "estantes", force: :cascade do |t|
    t.string   "user_id"
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "libros", force: :cascade do |t|
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.string   "isbn"
    t.decimal  "rate",       default: 1.0
    t.integer  "reviews",    default: 1
  end

  create_table "rates", force: :cascade do |t|
    t.decimal  "puntaje"
    t.string   "review"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id"
    t.integer  "libro_id"
  end

  add_index "rates", ["libro_id"], name: "index_rates_on_libro_id"
  add_index "rates", ["user_id"], name: "index_rates_on_user_id"

  create_table "users", force: :cascade do |t|
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end

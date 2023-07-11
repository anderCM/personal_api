# frozen_string_literal: true

# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 20_230_711_061_847) do
  # These are extensions that must be enabled in order to support this database
  enable_extension 'plpgsql'

  create_table 'countries', force: :cascade do |t|
    t.string 'name', null: false
    t.integer 'phone_code', null: false
    t.string 'flag_icon', null: false
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end

  create_table 'genders', force: :cascade do |t|
    t.string 'name', limit: 20, null: false
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end

  create_table 'users', force: :cascade do |t|
    t.string 'internal_cod', limit: 11, null: false
    t.string 'email', null: false
    t.string 'password_digest', null: false
    t.string 'first_name', null: false
    t.string 'last_name', null: false
    t.integer 'phone'
    t.date 'birth_day'
    t.text 'bio'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end
end

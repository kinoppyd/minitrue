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

ActiveRecord::Schema[7.0].define(version: 2022_02_14_164202) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "pgcrypto"
  enable_extension "plpgsql"

  create_table "users", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.string "name"
    t.string "avatar"
    t.string "profile"
    t.string "email"
    t.string "twitter"
    t.string "github"
    t.uuid "bitemporal_id"
    t.datetime "valid_from"
    t.datetime "valid_to"
    t.datetime "transaction_from"
    t.datetime "transaction_to"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["bitemporal_id"], name: "index_users_on_bitemporal_id"
    t.index ["transaction_from"], name: "index_users_on_transaction_from"
    t.index ["transaction_to"], name: "index_users_on_transaction_to"
    t.index ["valid_from"], name: "index_users_on_valid_from"
    t.index ["valid_to"], name: "index_users_on_valid_to"
  end

end

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

ActiveRecord::Schema[7.2].define(version: 2024_12_18_004953) do
  create_table "check_ins", force: :cascade do |t|
    t.integer "member_id", null: false
    t.datetime "check_in_time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "check_out_time"
    t.boolean "checked_out", default: false
    t.index ["member_id"], name: "index_check_ins_on_member_id"
  end

  create_table "item_stocks", force: :cascade do |t|
    t.string "name"
    t.integer "quantity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "members", force: :cascade do |t|
    t.string "name"
    t.string "membership_id"
    t.string "contact_info"
    t.string "membership_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "checked_in", default: false
    t.boolean "active"
  end

  add_foreign_key "check_ins", "members"
end

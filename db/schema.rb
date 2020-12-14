# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_12_14_024340) do

  create_table "customers", force: :cascade do |t|
    t.text "name"
    t.text "address"
    t.text "phone"
    t.text "email"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "parts", force: :cascade do |t|
    t.text "name"
    t.text "sku"
    t.text "description"
    t.decimal "price"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "product_line_items", force: :cascade do |t|
    t.integer "quote_id"
    t.integer "part_id"
    t.decimal "labor_units"
    t.decimal "unit_price"
    t.decimal "full_service_price"
    t.integer "quanity"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "quotes", force: :cascade do |t|
    t.integer "user_id"
    t.integer "site_id"
    t.text "name"
    t.datetime "started"
    t.datetime "updated"
    t.boolean "locked"
    t.text "material_lines"
    t.text "service_lines"
    t.text "equip_lines"
    t.text "wire_lines"
    t.integer "source"
    t.string "referal"
    t.integer "sale_type"
    t.boolean "taxable"
    t.integer "state_id"
    t.integer "county_id"
    t.integer "account_type"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "sites", force: :cascade do |t|
    t.text "name"
    t.text "address"
    t.text "phone"
    t.text "sitepoc"
    t.text "sitepocphone"
    t.text "notes"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "customer_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "level"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "vendors", force: :cascade do |t|
    t.text "name"
    t.text "poc"
    t.text "phone"
    t.text "url"
    t.text "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end

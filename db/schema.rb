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

ActiveRecord::Schema.define(version: 2022_03_22_055054) do

  create_table "case_infos", force: :cascade do |t|
    t.string "case_category"
    t.string "court_name"
    t.string "judge_name"
    t.string "registration_number"
    t.string "case_stage"
    t.string "petitioner_name"
    t.string "petitioner_advocate"
    t.string "respondent_name"
    t.string "respondent_advocate"
    t.date "business_on_date"
    t.date "hearing_date"
    t.string "purpose_of_hearing"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "user_id"
  end

  create_table "court_names", force: :cascade do |t|
    t.string "court_name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end

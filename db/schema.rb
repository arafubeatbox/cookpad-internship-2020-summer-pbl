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

ActiveRecord::Schema.define(version: 2020_08_27_113644) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "day_data", force: :cascade do |t|
    t.string "date", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "week_datum_id"
    t.index ["week_datum_id"], name: "index_day_data_on_week_datum_id"
  end

  create_table "day_kondates", force: :cascade do |t|
    t.bigint "day_datum_id", null: false
    t.bigint "kondate_id"
    t.integer "period", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["day_datum_id"], name: "index_day_kondates_on_day_datum_id"
    t.index ["kondate_id"], name: "index_day_kondates_on_kondate_id"
  end

  create_table "ingredients", force: :cascade do |t|
    t.string "name", null: false
    t.float "kcal", null: false
    t.float "protein", null: false
    t.float "carbohydrate", null: false
    t.float "fat", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "kondate_recipes", force: :cascade do |t|
    t.bigint "kondate_id", null: false
    t.bigint "recipe_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["kondate_id"], name: "index_kondate_recipes_on_kondate_id"
    t.index ["recipe_id"], name: "index_kondate_recipes_on_recipe_id"
  end

  create_table "kondates", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "nutrition_types", force: :cascade do |t|
    t.string "name", null: false
    t.float "kcal", null: false
    t.float "protein", null: false
    t.float "carbohydrate", null: false
    t.float "fat", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "recipe_ingredients", force: :cascade do |t|
    t.bigint "ingredient_id", null: false
    t.bigint "recipe_id", null: false
    t.float "ingredient_amount", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["ingredient_id"], name: "index_recipe_ingredients_on_ingredient_id"
    t.index ["recipe_id"], name: "index_recipe_ingredients_on_recipe_id"
  end

  create_table "recipes", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "description"
    t.bigint "user_id"
    t.string "image_url", null: false
    t.index ["user_id"], name: "index_recipes_on_user_id"
  end

  create_table "user_nutrition_types", force: :cascade do |t|
    t.bigint "nutrition_type_id", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["nutrition_type_id"], name: "index_user_nutrition_types_on_nutrition_type_id"
    t.index ["user_id"], name: "index_user_nutrition_types_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "name", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "week_data", force: :cascade do |t|
    t.string "week", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_week_data_on_user_id"
  end

  add_foreign_key "day_data", "week_data", on_delete: :cascade
  add_foreign_key "day_kondates", "day_data", on_delete: :cascade
  add_foreign_key "day_kondates", "kondates", on_delete: :restrict
  add_foreign_key "kondate_recipes", "kondates", on_delete: :cascade
  add_foreign_key "kondate_recipes", "recipes", on_delete: :restrict
  add_foreign_key "recipe_ingredients", "ingredients", on_delete: :cascade
  add_foreign_key "recipe_ingredients", "recipes", on_delete: :cascade
  add_foreign_key "recipes", "users", on_delete: :cascade
  add_foreign_key "user_nutrition_types", "nutrition_types", on_delete: :restrict
  add_foreign_key "user_nutrition_types", "users", on_delete: :cascade
  add_foreign_key "week_data", "users", on_delete: :cascade
end

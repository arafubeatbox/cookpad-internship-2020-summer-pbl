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

ActiveRecord::Schema.define(version: 2020_08_26_072346) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "day_data", force: :cascade do |t|
    t.string "date", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "week_data_id"
    t.index ["week_data_id"], name: "index_day_data_on_week_data_id"
  end

  create_table "day_recipes", force: :cascade do |t|
    t.bigint "day_data_id", null: false
    t.bigint "recipe_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["day_data_id"], name: "index_day_recipes_on_day_data_id"
    t.index ["recipe_id"], name: "index_day_recipes_on_recipe_id"
  end

  create_table "ingredients", force: :cascade do |t|
    t.string "name", null: false
    t.integer "kcal", null: false
    t.integer "protein", null: false
    t.integer "carbohydrate", null: false
    t.integer "fats", null: false
    t.integer "sugar", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "nutrition_types", force: :cascade do |t|
    t.string "name", null: false
    t.integer "kcal", null: false
    t.integer "protein", null: false
    t.integer "carbohydrate", null: false
    t.integer "fats", null: false
    t.integer "sugar", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "recipe_ingredients", force: :cascade do |t|
    t.bigint "ingredient_id", null: false
    t.bigint "recipe_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["ingredient_id"], name: "index_recipe_ingredients_on_ingredient_id"
    t.index ["recipe_id"], name: "index_recipe_ingredients_on_recipe_id"
  end

  create_table "recipes", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
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

  add_foreign_key "day_data", "week_data", column: "week_data_id", on_delete: :cascade
  add_foreign_key "day_recipes", "day_data", column: "day_data_id", on_delete: :cascade
  add_foreign_key "day_recipes", "recipes", on_delete: :restrict
  add_foreign_key "recipe_ingredients", "ingredients", on_delete: :cascade
  add_foreign_key "recipe_ingredients", "recipes", on_delete: :cascade
  add_foreign_key "user_nutrition_types", "nutrition_types", on_delete: :restrict
  add_foreign_key "user_nutrition_types", "users", on_delete: :cascade
  add_foreign_key "week_data", "users", on_delete: :cascade
end

class CreateUserNutritionTypes < ActiveRecord::Migration[6.0]
  def change
    create_table :user_nutrition_types do |t|
      t.references :nutrition_type, foreign_key: { on_delete: :restrict }, null: false
      t.references :user, foreign_key: { on_delete: :cascade }, null: false
      t.timestamps
    end
  end
end

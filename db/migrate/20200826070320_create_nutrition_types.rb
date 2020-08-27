class CreateNutritionTypes < ActiveRecord::Migration[6.0]
  def change
    create_table :nutrition_types do |t|
      t.string :name, null: false
      t.float :kcal, null: false
      t.float :protein, null: false
      t.float :carbohydrate, null: false
      t.float :fat, null: false
      t.timestamps
    end
  end
end

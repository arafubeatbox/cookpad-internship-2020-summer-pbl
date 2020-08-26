class CreateNutritionTypes < ActiveRecord::Migration[6.0]
  def change
    create_table :nutrition_types do |t|
      t.string :name, null: false
      t.integer :kcal, null: false
      t.integer :protein, null: false
      t.integer :carbohydrate, null: false
      t.integer :fats, null: false
      t.integer :sugar, null: false
      t.timestamps
    end
  end
end

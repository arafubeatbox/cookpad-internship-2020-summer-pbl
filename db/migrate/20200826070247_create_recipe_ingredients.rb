class CreateRecipeIngredients < ActiveRecord::Migration[6.0]
  def change
    create_table :recipe_ingredients do |t|
      t.references :ingredient, foreign_key: { on_delete: :cascade }, null: false
      t.references :recipe, foreign_key: { on_delete: :cascade }, null: false
      t.timestamps
    end
  end
end

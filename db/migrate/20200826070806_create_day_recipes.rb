class CreateDayRecipes < ActiveRecord::Migration[6.0]
  def change
    create_table :day_recipes do |t|
      t.references :day_data, foreign_key: { on_delete: :cascade }, null: false
      t.references :recipe, foreign_key: { on_delete: :restrict }, null: false
      t.timestamps
    end
  end
end

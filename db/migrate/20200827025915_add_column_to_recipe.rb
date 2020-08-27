class AddColumnToRecipe < ActiveRecord::Migration[6.0]
  def change
    add_column :recipes, :description, :string
    add_reference :recipes, :user, foreign_key: { on_delete: :cascade }
  end
end

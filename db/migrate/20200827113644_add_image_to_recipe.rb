class AddImageToRecipe < ActiveRecord::Migration[6.0]
  def change
    add_column :recipes, :image_url, :string, null: false
  end
end
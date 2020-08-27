# == Schema Information
#
# Table name: recipe_ingredients
#
#  id                :bigint           not null, primary key
#  ingredient_amount :float            not null
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#  ingredient_id     :bigint           not null
#  recipe_id         :bigint           not null
#
# Indexes
#
#  index_recipe_ingredients_on_ingredient_id  (ingredient_id)
#  index_recipe_ingredients_on_recipe_id      (recipe_id)
#
# Foreign Keys
#
#  fk_rails_...  (ingredient_id => ingredients.id) ON DELETE => cascade
#  fk_rails_...  (recipe_id => recipes.id) ON DELETE => cascade
#
require 'test_helper'

class RecipeIngredientTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end

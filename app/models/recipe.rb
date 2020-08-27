# == Schema Information
#
# Table name: recipes
#
#  id          :bigint           not null, primary key
#  description :string
#  image_url   :string           not null
#  name        :string           not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  user_id     :bigint
#
# Indexes
#
#  index_recipes_on_user_id  (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (user_id => users.id) ON DELETE => cascade
#
class Recipe < ApplicationRecord
  has_many :recipe_ingredients, dependent: :destroy
  has_many :ingredients, through: :recipe_ingredients

  belongs_to :user

  def calculate_total(attribute)
    total = 0
    recipe_ingredients.each do |ri|
      total += ri.ingredient.send(attribute) * ri.ingredient_amount / 100
    end
    total
  end
end

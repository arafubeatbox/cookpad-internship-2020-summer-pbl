# == Schema Information
#
# Table name: kondate_recipes
#
#  id         :bigint           not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  kondate_id :bigint           not null
#  recipe_id  :bigint           not null
#
# Indexes
#
#  index_kondate_recipes_on_kondate_id  (kondate_id)
#  index_kondate_recipes_on_recipe_id   (recipe_id)
#
# Foreign Keys
#
#  fk_rails_...  (kondate_id => kondates.id) ON DELETE => cascade
#  fk_rails_...  (recipe_id => recipes.id) ON DELETE => restrict
#
class KondateRecipe < ApplicationRecord
  belongs_to :recipe
  belongs_to :kondate
end

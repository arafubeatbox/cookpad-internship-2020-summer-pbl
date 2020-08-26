# == Schema Information
#
# Table name: day_recipes
#
#  id          :bigint           not null, primary key
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  day_data_id :bigint           not null
#  recipe_id   :bigint           not null
#
# Indexes
#
#  index_day_recipes_on_day_data_id  (day_data_id)
#  index_day_recipes_on_recipe_id    (recipe_id)
#
# Foreign Keys
#
#  fk_rails_...  (day_data_id => day_data.id) ON DELETE => cascade
#  fk_rails_...  (recipe_id => recipes.id) ON DELETE => restrict
#
class DayRecipe < ApplicationRecord
end

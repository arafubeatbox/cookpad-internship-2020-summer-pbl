# == Schema Information
#
# Table name: user_nutrition_types
#
#  id                :bigint           not null, primary key
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#  nutrition_type_id :bigint           not null
#  user_id           :bigint           not null
#
# Indexes
#
#  index_user_nutrition_types_on_nutrition_type_id  (nutrition_type_id)
#  index_user_nutrition_types_on_user_id            (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (nutrition_type_id => nutrition_types.id) ON DELETE => restrict
#  fk_rails_...  (user_id => users.id) ON DELETE => cascade
#
class UserNutritionType < ApplicationRecord
  belongs_to :user
  belongs_to :nutrition_type
end

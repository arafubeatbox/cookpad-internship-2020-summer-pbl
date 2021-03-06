# == Schema Information
#
# Table name: nutrition_types
#
#  id           :bigint           not null, primary key
#  carbohydrate :float            not null
#  fat          :float            not null
#  kcal         :float            not null
#  name         :string           not null
#  protein      :float            not null
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#
class NutritionType < ApplicationRecord
  has_many :user_nutrition_types, dependent: :restrict_with_error
  has_many :users, through: :user_nutrition_types
end

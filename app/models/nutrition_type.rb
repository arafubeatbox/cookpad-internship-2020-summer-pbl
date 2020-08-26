# == Schema Information
#
# Table name: nutrition_types
#
#  id           :bigint           not null, primary key
#  carbohydrate :integer          not null
#  fats         :integer          not null
#  kcal         :integer          not null
#  name         :string           not null
#  protein      :integer          not null
#  sugar        :integer          not null
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#
class NutritionType < ApplicationRecord
end

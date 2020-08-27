# == Schema Information
#
# Table name: kondates
#
#  id         :bigint           not null, primary key
#  name       :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Kondate < ApplicationRecord
  has_many :day_kondates, dependent: :restrict_with_error
  has_many :kondate_recipes, dependent: :destroy
  has_many :recipes, through: :kondate_recipes

  def calculate_total(attribute)
    total = 0
    recipes.each do |recipe|
      total += recipe.calculate_total(attribute)
    end
    total.round
  end
end

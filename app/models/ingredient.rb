# == Schema Information
#
# Table name: ingredients
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
class Ingredient < ApplicationRecord
  has_many :recipe_ingredients, dependent: :destroy
end

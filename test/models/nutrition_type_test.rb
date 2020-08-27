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
require 'test_helper'

class NutritionTypeTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end

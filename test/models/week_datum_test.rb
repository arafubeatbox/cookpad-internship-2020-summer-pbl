# == Schema Information
#
# Table name: week_data
#
#  id         :bigint           not null, primary key
#  week       :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :bigint           not null
#
# Indexes
#
#  index_week_data_on_user_id  (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (user_id => users.id) ON DELETE => cascade
#
require 'test_helper'

class WeekDatumTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end

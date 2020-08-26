# == Schema Information
#
# Table name: day_data
#
#  id           :bigint           not null, primary key
#  date         :string           not null
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  week_data_id :bigint
#
# Indexes
#
#  index_day_data_on_week_data_id  (week_data_id)
#
# Foreign Keys
#
#  fk_rails_...  (week_data_id => week_data.id) ON DELETE => cascade
#
class DayDatum < ApplicationRecord
end

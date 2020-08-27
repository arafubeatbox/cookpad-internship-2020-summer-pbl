# == Schema Information
#
# Table name: day_data
#
#  id            :bigint           not null, primary key
#  date          :string           not null
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  week_datum_id :bigint
#
# Indexes
#
#  index_day_data_on_week_datum_id  (week_datum_id)
#
# Foreign Keys
#
#  fk_rails_...  (week_datum_id => week_data.id) ON DELETE => cascade
#
class DayDatum < ApplicationRecord
  belongs_to :week_datum
  has_many :day_kondates, dependent: :destroy
end

# == Schema Information
#
# Table name: day_kondates
#
#  id           :bigint           not null, primary key
#  period       :integer          not null
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  day_datum_id :bigint           not null
#  kondate_id   :bigint
#
# Indexes
#
#  index_day_kondates_on_day_datum_id  (day_datum_id)
#  index_day_kondates_on_kondate_id    (kondate_id)
#
# Foreign Keys
#
#  fk_rails_...  (day_datum_id => day_data.id) ON DELETE => cascade
#  fk_rails_...  (kondate_id => kondates.id) ON DELETE => restrict
#
class DayKondate < ApplicationRecord
  belongs_to :day_datum
  belongs_to :kondate, optional: true

  enum period: { breakfast: 0, lunch: 1, dinner: 2 }
end

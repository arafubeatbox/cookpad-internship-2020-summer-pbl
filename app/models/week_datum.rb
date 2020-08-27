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
class WeekDatum < ApplicationRecord
  belongs_to :user
  has_many :day_data, dependent: :destroy

  def calculate_total(attribute)
    total = 0
    day_data.each do |day_datum|
      day_datum.day_kondates.each do |day_kondate|
        total += day_kondate.kondate.calculate_total(attribute) if day_kondate.kondate
      end
    end
    total.round
  end
end

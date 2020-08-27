class WeekDataController < ApplicationController
  before_action :set_week_data, only: %i[show]

  def show
  end

  private

  def set_week_data
    @week_datum = WeekDatum.find(params[:id])
  end
end

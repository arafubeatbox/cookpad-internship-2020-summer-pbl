class DayKondatesController < ApplicationController
  before_action :set_day_kondate, only: %i[edit]

  def edit
    @recipes = Recipe.all
    @kondates = Kondate.all
  end

  def update
  end

  private
  def set_day_kondate
    @day_kondate = DayKondate.find(params[:id])
  end
end

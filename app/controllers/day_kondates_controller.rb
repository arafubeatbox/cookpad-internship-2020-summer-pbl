class DayKondatesController < ApplicationController
  before_action :set_day_kondate, only: %i[edit update]

  def edit
    @recipes = Recipe.all
    @kondates = Kondate.all
  end

  def update
    kondate = @day_kondate.kondate ? @day_kondate.kondate : Kondate.new(name: "#{@day_kondate.day_datum.date + @day_kondate.period}の献立")
    recipe_ids = day_kondate_params[:recipe_ids].map(&:to_i)
    recipes = Recipe.where(id: recipe_ids)
    kondate.recipes = recipes

    if kondate.save
      @day_kondate.update(kondate_id: kondate.id)
      redirect_to week_datum_path(@day_kondate.day_datum.week_datum)
    else
      render edit, alert: '献立を登録できませんでした。'
    end
  end

  private
  def set_day_kondate
    @day_kondate = DayKondate.find(params[:id])
  end

  def day_kondate_params
    params.permit!
  end
end

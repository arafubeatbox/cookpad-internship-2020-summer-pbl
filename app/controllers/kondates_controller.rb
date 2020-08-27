class KondatesController < ApplicationController
  def index
    @kondates = Kondate.all
  end
end

class VisasController < ApplicationController
  def index
    @news = News.last(3)
    @tour_types = TypeOfTour.all
    @attention = Tour.published.take(3)
    @visas = Visa.all
  end

  def show
    @news = News.last(3)
    @tour_types = TypeOfTour.all
    @attention = Tour.published.take(3)
    @visa = Visa.find params[:id]
  end
end

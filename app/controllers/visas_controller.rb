class VisasController < ApplicationController
  def index
    @news = News.published.last(3)
    @tour_types = TypeOfTour.all
    @attention = Tour.published.order("RAND()").take(3)
    @visas = Visa.all
  end

  def show
    @news = News.published.last(3)
    @tour_types = TypeOfTour.all
    @attention = Tour.published.order("RAND()").take(3)
    @visa = Visa.find params[:id]
  end
end

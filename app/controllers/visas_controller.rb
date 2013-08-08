class VisasController < ApplicationController
  def index
    @title = "Визы"
    @news = News.published.last(3)
    @tour_types = TypeOfTour.all
    @attention = Tour.published.get_random.take(3)
    @visas = Visa.all
  end

  def show
    @news = News.published.last(3)
    @tour_types = TypeOfTour.all
    @attention = Tour.published.get_random.take(3)
    @visa = Visa.find params[:id]
    @title = @visa.title
  end
end

class VisasController < ApplicationController
  def index
    @news = News.last(3)
    @tour_types = TypeOfTour.all
    @attention = Tour.published.take(3)
  end

  def show
    @news = News.last(3)
    @tour_types = TypeOfTour.all
    @attention = Tour.published.take(3)
  end
end

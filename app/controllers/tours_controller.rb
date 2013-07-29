class ToursController < ApplicationController
  def index
    @tours = Tour.published
    @news = News.last(3)
    @tour_types = TypeOfTour.all
  end

  def show
    @tour = Tour.find params[:id]
    @news = News.last(3)
    @tour_types = TypeOfTour.all
    @tours = Tour.published.take(4)
  end
end

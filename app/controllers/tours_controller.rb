class ToursController < ApplicationController
  def index
    @tours = Tour.published
    @tours = @tours.joins(:countries).where('countries.id = ?', params[:country]) if params[:country]
    @tours = @tours.joins(:type_of_tours).where('type_of_tours.id = ?', params[:type]) if params[:type]
    @news = News.published.last(3)
    @tour_types = TypeOfTour.all
  end

  def show
    @tour = Tour.find params[:id]
    @news = News.published.last(3)
    @tour_types = TypeOfTour.all
    @tours = Tour.published.joins(:type_of_tours).where(id: @tour.type_of_tours).group('tours.id').order("RAND()").take(4)
    @manager = @tour.manager
  end

  def scoped_collection
    super.uniq
  end
end

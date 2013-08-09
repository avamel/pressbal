class ToursController < ApplicationController
  def index
    @title = "Все туры"
    @tours = Tour.published.page(params[:page]).per(10)
    @tours = @tours.joins(:countries).where('countries.slug = ?', params[:country]).page(params[:page]).per(10) if params[:country]
    @tours = @tours.joins(:type_of_tours).where('type_of_tours.slug = ?', params[:type]).page(params[:page]).per(10) if params[:type]
    @news = News.published.take(3)
    @tour_types = TypeOfTour.all
  end

  def show
    @tour = Tour.find params[:id]
    @meta_keywords = @tour.meta_keywords
    @meta_description = @tour.meta_description
    @title = @tour.title
    @news = News.published.take(3)
    @tour_types = TypeOfTour.all
    @tours = Tour.published.joins(:type_of_tours).where('type_of_tours.id in (?)', @tour.type_of_tours).where('tours.id != ?', @tour).group('tours.id').get_random
    @manager = @tour.manager
  end

  def scoped_collection
    super.uniq
  end
end

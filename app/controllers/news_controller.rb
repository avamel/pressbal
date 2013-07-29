class NewsController < ApplicationController
  def index
    @news_all = News.published
    @news = News.last(3)
    @tour_types = TypeOfTour.all
  end

  def show
    @news_item = News.find params[:id]
    @news = News.last(3)
    @tour_types = TypeOfTour.all
  end
end

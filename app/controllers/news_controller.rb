class NewsController < ApplicationController
  def index
    @news_all = News.published
    @news = News.published.last(3)
    @tour_types = TypeOfTour.all
    @attention = Tour.published.order("RAND()").take(3)
  end

  def show
    @news_item = News.find params[:id]
    @news = News.published.last(3)
    @tour_types = TypeOfTour.all
    @attention = Tour.published.order("RAND()").take(3)
  end
end

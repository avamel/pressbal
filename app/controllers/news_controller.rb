class NewsController < ApplicationController
  def index
    @title = "Новости"
    @news_all = News.published
    @news = News.published.last(3)
    @tour_types = TypeOfTour.all
    @attention = Tour.published.order("RAND()").take(3)
  end

  def show
    @news_item = News.find params[:id]
    @title = @news_item.title
    @news = News.published.last(3)
    @tour_types = TypeOfTour.all
    @attention = Tour.published.order("RAND()").take(3)
  end
end

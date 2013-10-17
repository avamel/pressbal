class NewsController < ApplicationController
  def index
    @title = 'Новости'
    @news_all = News.published.page(params[:page]).per(8)
    @tour_types = TypeOfTour.all
  end

  def show
    @news_item = News.find params[:id]
    @title = @news_item.title
    @tour_types = TypeOfTour.all
  end
end

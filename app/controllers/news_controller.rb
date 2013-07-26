class NewsController < ApplicationController
  def index
    @news = News.published
  end

  def show
    @news = News.find_by(:id)
  end
end

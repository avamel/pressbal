class StaticPagesController < ApplicationController

  def home
    @home = StaticBlock.home
    @tours = Tour.published.take(4)
    @tour = Tour.active
    @countries = Country.all
    @news = News.last(3)
    @tour_types = TypeOfTour.all
  end

  def about_as
    @about_as = StaticBlock.about_as
    @news = News.last(3)
    @tour_types = TypeOfTour.all
    @attention = Tour.published.take(3)
  end

  def contacts
    @contacts = StaticBlock.contacts
    @news = News.last(3)
    @tour_types = TypeOfTour.all
    @attention = Tour.published.take(3)
  end

  def for_agency
    @for_agency = StaticBlock.for_agency
    @news = News.last(3)
    @tour_types = TypeOfTour.all
    @attention = Tour.published.take(3)
  end

  def for_clients
    @for_clients = StaticBlock.for_clients
    @news = News.last(3)
    @tour_types = TypeOfTour.all
    @attention = Tour.published.take(3)
  end
  def for_tourists
    @for_tourists = StaticBlock.for_tourists
    @news = News.last(3)
    @tour_types = TypeOfTour.all
    @attention = Tour.published.take(3)
  end

end

class StaticPagesController < ApplicationController

  def home
    @home = StaticBlock.home
    @tours = Tour.published.order("RAND()").take(4)
    @tour = Tour.active
    @countries = Country.all
    @news = News.published.last(3)
    @tour_types = TypeOfTour.all
  end

  def about_as
    @about_as = StaticBlock.about_as
    @title = @about_as.title
    @news = News.published.last(3)
    @tour_types = TypeOfTour.all
    @attention = Tour.published.order("RAND()").take(3)
  end

  def contacts
    @contacts = StaticBlock.contacts
    @title = @contacts.title
    @news = News.published.last(3)
    @tour_types = TypeOfTour.all
    @attention = Tour.published.order("RAND()").take(3)
  end

  def for_agency
    @for_agency = StaticBlock.for_agency
    @title = @for_agency.title
    @news = News.published.last(3)
    @tour_types = TypeOfTour.all
    @attention = Tour.published.order("RAND()").take(3)
  end

  def for_clients
    @for_clients = StaticBlock.for_clients
    @title = @for_clients.title
    @news = News.published.last(3)
    @tour_types = TypeOfTour.all
    @attention = Tour.published.order("RAND()").take(3)
  end
  def for_tourists
    @for_tourists = StaticBlock.for_tourists
    @title = @for_tourists.title
    @news = News.published.last(3)
    @tour_types = TypeOfTour.all
    @attention = Tour.published.order("RAND()").take(3)
  end

end
